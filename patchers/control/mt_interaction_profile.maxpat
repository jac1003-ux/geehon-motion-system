{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 4,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [80, 80, 1180, 560],
    "gridsize": [15, 15],
    "description": "Safe timestamp-driven Pose interaction profile abstraction.",
    "tags": "pose interaction profile state clutch safety dictionary",
    "boxes": [
      {
        "box": {
          "id": "profile-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [40, 25, 620, 24],
          "text": "MT Interaction Profile - safe body-control state"
        }
      },
      {
        "box": {
          "id": "profile-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [40, 50, 880, 22],
          "text": "HOLD / RETURN / LOST protection is applied before raw features reach future semantic mappings."
        }
      },
      {
        "box": {
          "id": "profile-in-dictionary",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [100, 105, 30, 30],
          "comment": "feature engine dictionary"
        }
      },
      {
        "box": {
          "id": "profile-in-command",
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [300, 105, 30, 30],
          "comment": "interaction commands"
        }
      },
      {
        "box": {
          "id": "profile-js",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 7,
          "outlettype": ["", "", "", "", "", "", ""],
          "patching_rect": [100, 255, 345, 22],
          "text": "js Patcher:/../../javascript/mt_pose_interaction_state.js",
          "varname": "pose_interaction_state"
        }
      },
      {
        "box": {
          "id": "profile-loadbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [590, 150, 65, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "profile-init-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 6,
          "outlettype": ["bang", "bang", "bang", "bang", "bang", "bang"],
          "patching_rect": [680, 150, 105, 22],
          "text": "t b b b b b b"
        }
      },
      {
        "box": {
          "id": "profile-init-arm",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [590, 195, 55, 22],
          "text": "arm 0"
        }
      },
      {
        "box": {
          "id": "profile-init-profile",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [655, 195, 95, 22],
          "text": "profile singer"
        }
      },
      {
        "box": {
          "id": "profile-init-clutch",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [760, 195, 65, 22],
          "text": "clutch 1"
        }
      },
      {
        "box": {
          "id": "profile-init-pedal-mode",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [835, 195, 100, 22],
          "text": "pedal_mode 0"
        }
      },
      {
        "box": {
          "id": "profile-init-pedal-connected",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [945, 195, 140, 22],
          "text": "pedal_connected 1"
        }
      },
      {
        "box": {
          "id": "profile-init-name",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [845, 150, 220, 22],
          "text": "dict_name #0_pose_interaction"
        }
      },
      {
        "box": {
          "id": "profile-out-dictionary",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [100, 430, 30, 30],
          "comment": "final interaction dictionary"
        }
      },
      {
        "box": {
          "id": "profile-out-active",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [250, 430, 30, 30],
          "comment": "active 0/1"
        }
      },
      {
        "box": {
          "id": "profile-out-confidence",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [400, 430, 30, 30],
          "comment": "tracking confidence 0-1"
        }
      },
      {
        "box": {
          "id": "profile-out-energy",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [560, 430, 30, 30],
          "comment": "Energy macro (unassigned)"
        }
      },
      {
        "box": {
          "id": "profile-out-space",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [710, 430, 30, 30],
          "comment": "Space macro (unassigned)"
        }
      },
      {
        "box": {
          "id": "profile-out-texture",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [860, 430, 30, 30],
          "comment": "Texture macro (unassigned)"
        }
      },
      {
        "box": {
          "id": "profile-out-transform",
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [1010, 430, 30, 30],
          "comment": "Transform macro (unassigned)"
        }
      }
    ],
    "lines": [
      {"patchline": {"source": ["profile-in-dictionary", 0], "destination": ["profile-js", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-in-command", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-loadbang", 0], "destination": ["profile-init-trigger", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-trigger", 0], "destination": ["profile-init-arm", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-trigger", 1], "destination": ["profile-init-profile", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-trigger", 2], "destination": ["profile-init-clutch", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-trigger", 3], "destination": ["profile-init-pedal-mode", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-trigger", 4], "destination": ["profile-init-pedal-connected", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-trigger", 5], "destination": ["profile-init-name", 0], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-arm", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-profile", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-clutch", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-pedal-mode", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-pedal-connected", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-init-name", 0], "destination": ["profile-js", 1], "color": [0.44, 0.72, 1, 1]}},
      {"patchline": {"source": ["profile-js", 0], "destination": ["profile-out-dictionary", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-js", 1], "destination": ["profile-out-active", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-js", 2], "destination": ["profile-out-confidence", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-js", 3], "destination": ["profile-out-energy", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-js", 4], "destination": ["profile-out-space", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-js", 5], "destination": ["profile-out-texture", 0], "color": [1, 0.62, 0.24, 1]}},
      {"patchline": {"source": ["profile-js", 6], "destination": ["profile-out-transform", 0], "color": [1, 0.62, 0.24, 1]}}
    ]
  }
}
