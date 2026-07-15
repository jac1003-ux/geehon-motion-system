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
    "rect": [80, 80, 1120, 780],
    "gridsize": [15, 15],
    "description": "Portable Pose Landmarker jweb bridge with instance-safe frame dictionaries.",
    "tags": "pose jweb camera bridge dictionary interaction",
    "boxes": [
      {
        "box": {
          "id": "pose-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [40, 25, 520, 24],
          "text": "MT Control Pose Jweb - camera and frame dictionary bridge",
          "presentation": 1,
          "presentation_rect": [12, 8, 420, 22]
        }
      },
      {
        "box": {
          "id": "pose-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [40, 55, 680, 22],
          "text": "Display mirroring is independent from anatomical left/right data. Frames use #0_pose_frame."
        }
      },
      {
        "box": {
          "id": "pose-reload",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [40, 105, 58, 22],
          "text": "reload",
          "varname": "pose_reload",
          "presentation": 1,
          "presentation_rect": [12, 38, 58, 22]
        }
      },
      {
        "box": {
          "id": "pose-list-devices",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [115, 105, 125, 22],
          "text": "get_mediadevices",
          "presentation": 1,
          "presentation_rect": [78, 38, 125, 22]
        }
      },
      {
        "box": {
          "id": "pose-camera-menu",
          "items": [],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "", ""],
          "parameter_enable": 0,
          "patching_rect": [260, 105, 250, 22],
          "varname": "pose_camera_menu",
          "presentation": 1,
          "presentation_rect": [212, 38, 230, 22]
        }
      },
      {
        "box": {
          "id": "pose-camera-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [530, 105, 155, 22],
          "text": "prepend set_mediadevice"
        }
      },
      {
        "box": {
          "id": "pose-mirror",
          "checked": 1,
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [40, 155, 24, 24],
          "varname": "pose_mirror",
          "presentation": 1,
          "presentation_rect": [12, 68, 24, 24]
        }
      },
      {
        "box": {
          "id": "pose-mirror-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [70, 157, 70, 20],
          "text": "Mirror",
          "presentation": 1,
          "presentation_rect": [40, 70, 58, 20]
        }
      },
      {
        "box": {
          "id": "pose-mirror-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [40, 195, 125, 22],
          "text": "prepend flip_image"
        }
      },
      {
        "box": {
          "id": "pose-draw-skeleton",
          "checked": 1,
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [205, 155, 24, 24],
          "varname": "pose_draw_skeleton",
          "presentation": 1,
          "presentation_rect": [108, 68, 24, 24]
        }
      },
      {
        "box": {
          "id": "pose-draw-skeleton-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [235, 157, 95, 20],
          "text": "Skeleton",
          "presentation": 1,
          "presentation_rect": [136, 70, 72, 20]
        }
      },
      {
        "box": {
          "id": "pose-skeleton-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "patching_rect": [205, 195, 45, 22],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "pose-landmarks-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [205, 235, 155, 22],
          "text": "prepend draw_landmarks"
        }
      },
      {
        "box": {
          "id": "pose-connectors-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [380, 235, 160, 22],
          "text": "prepend draw_connectors"
        }
      },
      {
        "box": {
          "id": "pose-draw-zone",
          "checked": 1,
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["int"],
          "patching_rect": [570, 155, 24, 24],
          "varname": "pose_draw_zone",
          "presentation": 1,
          "presentation_rect": [218, 68, 24, 24]
        }
      },
      {
        "box": {
          "id": "pose-draw-zone-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [600, 157, 105, 20],
          "text": "Control zone",
          "presentation": 1,
          "presentation_rect": [246, 70, 92, 20]
        }
      },
      {
        "box": {
          "id": "pose-zone-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [570, 195, 165, 22],
          "text": "prepend draw_control_zone"
        }
      },
      {
        "box": {
          "id": "pose-jweb",
          "disablefind": 0,
          "maxclass": "jweb",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [40, 290, 640, 360],
          "presentation": 1,
          "presentation_rect": [12, 102, 430, 320],
          "rendermode": 1,
          "varname": "pose_jweb"
        }
      },
      {
        "box": {
          "id": "pose-output-route",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["", "", "", "", ""],
          "patching_rect": [740, 290, 250, 22],
          "text": "route update mediadevices status error"
        }
      },
      {
        "box": {
          "id": "pose-update-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["", "int", "int"],
          "patching_rect": [740, 335, 90, 22],
          "text": "unpack s i i"
        }
      },
      {
        "box": {
          "id": "pose-dictionary-prepend",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [740, 380, 125, 22],
          "text": "prepend dictionary"
        }
      },
      {
        "box": {
          "id": "pose-camera-refresh-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "clear"],
          "patching_rect": [885, 335, 70, 22],
          "text": "t l clear"
        }
      },
      {
        "box": {
          "id": "pose-camera-iter",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [885, 375, 35, 22],
          "text": "iter"
        }
      },
      {
        "box": {
          "id": "pose-camera-append",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [885, 415, 110, 22],
          "text": "prepend append"
        }
      },
      {
        "box": {
          "id": "pose-camera-append-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", ""],
          "patching_rect": [885, 455, 45, 22],
          "text": "t l l"
        }
      },
      {
        "box": {
          "id": "pose-start-loadbang",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [40, 690, 70, 22],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "pose-start-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["bang", "bang"],
          "patching_rect": [125, 690, 45, 22],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "pose-path-project",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [195, 690, 365, 22],
          "text": "Project:/web/pose-landmarker/jweb-pose-landmarker.html"
        }
      },
      {
        "box": {
          "id": "pose-path-absolute",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [575, 690, 95, 22],
          "text": "absolutepath"
        }
      },
      {
        "box": {
          "id": "pose-path-fileurl",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [685, 690, 105, 22],
          "text": "sprintf file://%s"
        }
      },
      {
        "box": {
          "id": "pose-path-symbol",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [805, 690, 145, 22],
          "text": "tosymbol @separator \" \""
        }
      },
      {
        "box": {
          "id": "pose-path-url",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [965, 690, 85, 22],
          "text": "prepend url"
        }
      },
      {
        "box": {
          "id": "pose-init-delay",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": ["bang"],
          "patching_rect": [125, 730, 65, 22],
          "text": "delay 250"
        }
      },
      {
        "box": {
          "id": "pose-init-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": ["bang", "bang", "bang", "bang", "bang"],
          "patching_rect": [205, 730, 100, 22],
          "text": "t b b b b b"
        }
      },
      {
        "box": {
          "id": "pose-init-dict",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [325, 730, 195, 22],
          "text": "set_dict_name #0_pose_frame"
        }
      },
      {
        "box": {
          "id": "pose-init-mirror",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [535, 730, 90, 22],
          "text": "flip_image 1"
        }
      },
      {
        "box": {
          "id": "pose-init-landmarks",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [640, 730, 125, 22],
          "text": "draw_landmarks 1"
        }
      },
      {
        "box": {
          "id": "pose-init-connectors",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [780, 730, 130, 22],
          "text": "draw_connectors 1"
        }
      },
      {
        "box": {
          "id": "pose-init-zone",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [925, 730, 140, 22],
          "text": "draw_control_zone 1"
        }
      },
      {
        "box": {
          "id": "pose-out-frame",
          "maxclass": "outlet",
          "patching_rect": [740, 620, 30, 30],
          "comment": "frame dictionary update"
        }
      },
      {
        "box": {
          "id": "pose-out-camera",
          "maxclass": "outlet",
          "patching_rect": [840, 620, 30, 30],
          "comment": "camera menu append"
        }
      },
      {
        "box": {
          "id": "pose-out-status",
          "maxclass": "outlet",
          "patching_rect": [940, 620, 30, 30],
          "comment": "status"
        }
      },
      {
        "box": {
          "id": "pose-out-error",
          "maxclass": "outlet",
          "patching_rect": [1040, 620, 30, 30],
          "comment": "error"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": ["pose-reload", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-list-devices", 0],
          "destination": ["pose-jweb", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-menu", 1],
          "destination": ["pose-camera-set", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-set", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-mirror", 0],
          "destination": ["pose-mirror-prepend", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-mirror-prepend", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-draw-skeleton", 0],
          "destination": ["pose-skeleton-trigger", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-skeleton-trigger", 0],
          "destination": ["pose-landmarks-prepend", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-skeleton-trigger", 1],
          "destination": ["pose-connectors-prepend", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-landmarks-prepend", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-connectors-prepend", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-draw-zone", 0],
          "destination": ["pose-zone-prepend", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-zone-prepend", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-jweb", 0],
          "destination": ["pose-output-route", 0],
          "color": [0.68, 0.95, 0.34, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-output-route", 0],
          "destination": ["pose-update-unpack", 0],
          "color": [0.68, 0.95, 0.34, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-update-unpack", 0],
          "destination": ["pose-dictionary-prepend", 0],
          "color": [0.68, 0.95, 0.34, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-dictionary-prepend", 0],
          "destination": ["pose-out-frame", 0],
          "color": [0.68, 0.95, 0.34, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-output-route", 1],
          "destination": ["pose-camera-refresh-trigger", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-refresh-trigger", 1],
          "destination": ["pose-camera-menu", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-refresh-trigger", 0],
          "destination": ["pose-camera-iter", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-iter", 0],
          "destination": ["pose-camera-append", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-append", 0],
          "destination": ["pose-camera-append-trigger", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-append-trigger", 1],
          "destination": ["pose-camera-menu", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-camera-append-trigger", 0],
          "destination": ["pose-out-camera", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-output-route", 2],
          "destination": ["pose-out-status", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-output-route", 3],
          "destination": ["pose-out-error", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-start-loadbang", 0],
          "destination": ["pose-start-trigger", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-start-trigger", 1],
          "destination": ["pose-path-project", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-path-project", 0],
          "destination": ["pose-path-absolute", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-path-absolute", 0],
          "destination": ["pose-path-fileurl", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-path-fileurl", 0],
          "destination": ["pose-path-symbol", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-path-symbol", 0],
          "destination": ["pose-path-url", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-path-url", 0],
          "destination": ["pose-jweb", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-start-trigger", 0],
          "destination": ["pose-init-delay", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-delay", 0],
          "destination": ["pose-init-trigger", 0],
          "color": [0.44, 0.72, 1, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-trigger", 4],
          "destination": ["pose-init-dict", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-trigger", 3],
          "destination": ["pose-init-mirror", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-trigger", 2],
          "destination": ["pose-init-landmarks", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-trigger", 1],
          "destination": ["pose-init-connectors", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-trigger", 0],
          "destination": ["pose-init-zone", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-dict", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-mirror", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-landmarks", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-connectors", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      },
      {
        "patchline": {
          "source": ["pose-init-zone", 0],
          "destination": ["pose-jweb", 0],
          "color": [1, 0.62, 0.24, 1]
        }
      }
    ]
  }
}
