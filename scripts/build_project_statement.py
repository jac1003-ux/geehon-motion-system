#!/usr/bin/env python3
from datetime import date
from pathlib import Path

from docx import Document
from docx.enum.section import WD_SECTION_START
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Inches, Pt, RGBColor


ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "docs" / "JUHUA_Project_Statement_Draft.docx"

GREEN = RGBColor(31, 74, 61)
GOLD = RGBColor(224, 181, 52)
INK = RGBColor(30, 44, 39)
MUTED = RGBColor(104, 128, 118)
PALE = "EAF1ED"


def set_font(run, size=11, color=INK, bold=False, italic=False):
    run.font.name = "Calibri"
    run._element.get_or_add_rPr().rFonts.set(qn("w:ascii"), "Calibri")
    run._element.get_or_add_rPr().rFonts.set(qn("w:hAnsi"), "Calibri")
    run.font.size = Pt(size)
    run.font.color.rgb = color
    run.bold = bold
    run.italic = italic


def shade_paragraph(paragraph, fill=PALE):
    p_pr = paragraph._p.get_or_add_pPr()
    shd = OxmlElement("w:shd")
    shd.set(qn("w:fill"), fill)
    p_pr.append(shd)


def add_body(doc, text, after=8):
    paragraph = doc.add_paragraph()
    paragraph.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
    paragraph.paragraph_format.space_before = Pt(0)
    paragraph.paragraph_format.space_after = Pt(after)
    paragraph.paragraph_format.line_spacing = 1.333
    set_font(paragraph.add_run(text))
    return paragraph


def add_heading(doc, text, level=1):
    paragraph = doc.add_paragraph()
    paragraph.paragraph_format.keep_with_next = True
    if level == 1:
        size, before, after, color = 16, 18, 10, GREEN
    elif level == 2:
        size, before, after, color = 13, 12, 6, GREEN
    else:
        size, before, after, color = 12, 8, 4, INK
    paragraph.paragraph_format.space_before = Pt(before)
    paragraph.paragraph_format.space_after = Pt(after)
    set_font(paragraph.add_run(text), size=size, color=color, bold=True)
    return paragraph


def add_caption(doc, text):
    paragraph = doc.add_paragraph()
    paragraph.alignment = WD_ALIGN_PARAGRAPH.CENTER
    paragraph.paragraph_format.space_before = Pt(3)
    paragraph.paragraph_format.space_after = Pt(8)
    set_font(paragraph.add_run(text), size=9, color=MUTED, italic=True)


def add_image(doc, relative_path, width=6.5):
    paragraph = doc.add_paragraph()
    paragraph.alignment = WD_ALIGN_PARAGRAPH.CENTER
    paragraph.paragraph_format.space_before = Pt(4)
    paragraph.paragraph_format.space_after = Pt(0)
    paragraph.add_run().add_picture(str(ROOT / relative_path), width=Inches(width))


def add_module(doc, title, text):
    paragraph = doc.add_paragraph()
    paragraph.paragraph_format.space_before = Pt(3)
    paragraph.paragraph_format.space_after = Pt(3)
    paragraph.paragraph_format.line_spacing = 1.15
    set_font(paragraph.add_run(f"{title}. "), size=10.5, color=GREEN, bold=True)
    set_font(paragraph.add_run(text), size=10.5)


def add_page_number(paragraph):
    paragraph.alignment = WD_ALIGN_PARAGRAPH.RIGHT
    run = paragraph.add_run()
    begin = OxmlElement("w:fldChar")
    begin.set(qn("w:fldCharType"), "begin")
    instruction = OxmlElement("w:instrText")
    instruction.set(qn("xml:space"), "preserve")
    instruction.text = "PAGE"
    end = OxmlElement("w:fldChar")
    end.set(qn("w:fldCharType"), "end")
    run._r.extend([begin, instruction, end])
    set_font(run, size=9, color=MUTED)


def configure_document(doc):
    section = doc.sections[0]
    section.start_type = WD_SECTION_START.NEW_PAGE
    section.page_width = Inches(8.5)
    section.page_height = Inches(11)
    section.top_margin = Inches(1)
    section.right_margin = Inches(1)
    section.bottom_margin = Inches(1)
    section.left_margin = Inches(1)
    section.header_distance = Inches(0.492)
    section.footer_distance = Inches(0.492)

    normal = doc.styles["Normal"]
    normal.font.name = "Calibri"
    normal._element.rPr.rFonts.set(qn("w:ascii"), "Calibri")
    normal._element.rPr.rFonts.set(qn("w:hAnsi"), "Calibri")
    normal.font.size = Pt(11)
    normal.font.color.rgb = INK
    normal.paragraph_format.space_before = Pt(0)
    normal.paragraph_format.space_after = Pt(8)
    normal.paragraph_format.line_spacing = 1.333

    header = section.header.paragraphs[0]
    header.alignment = WD_ALIGN_PARAGRAPH.LEFT
    header.paragraph_format.space_after = Pt(0)
    set_font(header.add_run("JUHUA MOTION INSTRUMENT  |  PROJECT STATEMENT DRAFT"), size=8.5, color=MUTED, bold=True)
    add_page_number(section.footer.paragraphs[0])


def build():
    doc = Document()
    configure_document(doc)

    # Page 1 — editorial cover and project statement.
    kicker = doc.add_paragraph()
    kicker.alignment = WD_ALIGN_PARAGRAPH.CENTER
    kicker.paragraph_format.space_before = Pt(10)
    kicker.paragraph_format.space_after = Pt(8)
    set_font(kicker.add_run("GESTURE-CONTROLLED LIVE SOUND PERFORMANCE SYSTEM"), size=9.5, color=GOLD, bold=True)

    title = doc.add_paragraph()
    title.alignment = WD_ALIGN_PARAGRAPH.CENTER
    title.paragraph_format.space_after = Pt(3)
    set_font(title.add_run("JUHUA MOTION INSTRUMENT"), size=27, color=GREEN, bold=True)

    subtitle = doc.add_paragraph()
    subtitle.alignment = WD_ALIGN_PARAGRAPH.CENTER
    subtitle.paragraph_format.space_after = Pt(10)
    set_font(subtitle.add_run("A Max/MSP instrument for spatial hand roles, continuous control and live transformation"), size=12.5, color=MUTED)

    meta = doc.add_paragraph()
    meta.alignment = WD_ALIGN_PARAGRAPH.CENTER
    meta.paragraph_format.space_after = Pt(14)
    set_font(meta.add_run(f"Project statement draft  |  {date.today().strftime('%d %B %Y')}"), size=9.5, color=MUTED, italic=True)

    add_image(doc, "assets/ui/concepts/perform_ui_concept_v7_final_cleanup.png", 6.5)
    add_caption(doc, "Perform-page design: sources, gesture feedback, serial effects, recording and master monitoring in one view.")
    add_heading(doc, "Project Statement", 1)
    add_body(doc, "JUHUA Motion Instrument is a live sound performance system that treats bodily position as part of an instrument rather than as a remote control layered on top of one. Built in Max/MSP, it combines microphone, file and granular sources with camera-based hand tracking, four serial audio effects, recording and a performance-oriented interface.")
    add_body(doc, "The project asks how gesture mapping can remain readable during performance. Instead of trusting left/right hand labels, which can swap during tracking, the camera image is divided into stable spatial roles. One zone adjusts continuous parameters through X position, Y position and pinch; the other selects an effect with finger counts 1–5, while a fist freezes change. The performer can therefore see, hear and understand the current control state without leaving the main interface.", after=0)

    # Page 2 — motivation and interaction.
    page_heading = add_heading(doc, "1. Artistic Motivation", 1)
    page_heading.paragraph_format.page_break_before = True
    add_body(doc, "Electronic performance often separates expressive motion from the technical controls that shape sound. Mouse-driven interfaces are precise, but they pull attention toward a screen and reduce the visibility of cause and effect for an audience. JUHUA explores a more physical relationship: a movement should create an audible change, while the interface explains what the system believes the movement means.")
    add_body(doc, "The goal is not to replace tactile controllers. It is to create a complementary performance layer for gestures that benefit from scale, distance and visible intention. This led to a design that favours a small number of legible mappings, explicit feedback and a reliable hold state over a large vocabulary of symbolic gestures.")
    add_heading(doc, "2. Interaction Design", 1)
    add_image(doc, "assets/ui/concepts/gesture_detail_layout_v3_live_feedback.png", 6.35)
    add_caption(doc, "Gesture page: spatial work zones, target selection and two rows of numerical mapping feedback.")
    add_module(doc, "Parameter zone", "The active hand produces normalized X, Y and pinch values. The interface displays both the raw coordinates and the effect parameters that receive them.")
    add_module(doc, "Gesture gate", "Finger counts 1–4 select Vocoder, Bitcrusher, Multiband Filter and Feedback Delay; 5 targets all four effects. A fist enters Hold and prevents further mapping changes.")
    add_module(doc, "Readable feedback", "The recognized value 0–5 is shown immediately and the Control Target changes with the confirmed gesture, allowing the performer to correct a misread before it becomes musically disruptive.")

    # Page 3 — implementation.
    page_heading = add_heading(doc, "3. Technical Realisation", 1)
    page_heading.paragraph_format.page_break_before = True
    flow = doc.add_paragraph()
    flow.alignment = WD_ALIGN_PARAGRAPH.CENTER
    flow.paragraph_format.space_before = Pt(0)
    flow.paragraph_format.space_after = Pt(10)
    flow.paragraph_format.left_indent = Inches(0.18)
    flow.paragraph_format.right_indent = Inches(0.18)
    shade_paragraph(flow)
    set_font(flow.add_run("MIC / FILE / GRANULAR  →  SOURCE MIXER  →  VOCODER  →  BITCRUSHER  →  MULTIBAND  →  FEEDBACK DELAY  →  RECORD / MONITOR"), size=9.5, color=GREEN, bold=True)
    add_body(doc, "MediaPipe hand tracking runs inside Max through jweb. The bridge sends landmark and gesture data to a shared mapping state machine, which assigns hands by screen position rather than handedness labels. Ambiguous occupancy is rejected, and a short stability period is required before a zone becomes active.")
    add_body(doc, "Camera refresh rate directly affects how often new control values arrive. To avoid a faster camera producing a more aggressive response, numerical smoothing uses elapsed timestamps with a 100 ms time constant instead of a fixed per-frame step. Gesture confirmation is also time based: number selection requires 300 ms, while the fist Hold requires 100 ms. Frame-count fallbacks remain only for inputs without timestamps.")
    add_image(doc, "assets/ui/concepts/fx_detail_layout_v5_source_style_actual_ratio.png", 6.35)
    add_caption(doc, "FX page: one full effect editor at a time, with four persistent output controls for the serial stages.")
    add_body(doc, "The audio path is deliberately serial. Vocoder and Bitcrusher establish the transformed material, Multiband Filter reshapes its spectrum, and Feedback Delay adds the final temporal layer. Click-free 20 ms bypass ramps keep the dry signal moving through disabled stages. The FX page mirrors each module's existing Output Gain rather than creating a second gain state.", after=0)

    # Page 4 — sonic intent, reflection and current stage.
    page_heading = add_heading(doc, "4. Sound Design Strategy", 1)
    page_heading.paragraph_format.page_break_before = True
    add_module(doc, "Granular source", "Creates sustained or fragmented material from a microphone capture or loaded sample. Wet, density, size and pitch are exposed as performance macros.")
    add_module(doc, "Vocoder", "Introduces a spectral voice layer and hybrid carrier character. Brightness, carrier tone, noise mix, dry/wet and spectral smoothing support both intelligible and synthetic results.")
    add_module(doc, "Bitcrusher", "Adds clearly perceptible digital degradation through sample-rate reduction, bit quantisation and drive. Its strong contrast makes gesture changes easy to hear.")
    add_module(doc, "Multiband Filter", "Divides the sound into low, mid and high regions for spectral focus, contrast and spread. It functions as the middle shaping stage rather than as a parallel return.")
    add_module(doc, "Feedback Delay", "Finishes the chain with delay time, feedback and stereo offset. Placing it last lets previous transformations generate a coherent echo tail.")
    add_heading(doc, "5. Reflection and Current Stage", 1)
    add_body(doc, "The main design lesson is that recognition accuracy alone does not create a playable interface. The performer also needs a stable role model, time-consistent response and visible confirmation. Spatial work zones, Hold and numerical feedback emerged from repeated camera testing and now define the identity of the instrument.")
    add_image(doc, "assets/ui/concepts/master_detail_layout_v4_record_monitor.png", 4.8)
    add_caption(doc, "Master page: non-destructive record, review and export alongside final monitoring.")
    add_body(doc, "The current Max 9 prototype has completed its structural and static test pass, including all active subpatch layouts. Before public release, the remaining work is a final Max runtime review of audio, camera behaviour, Console output and export on the presentation computer, followed by documentation cleanup and packaging. The project remains a performance prototype rather than a standalone plug-in.", after=0)

    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    doc.save(OUTPUT)
    print(OUTPUT)


if __name__ == "__main__":
    build()
