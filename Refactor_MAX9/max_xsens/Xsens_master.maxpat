{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 3,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 77.0, 1639.0, 908.0 ],
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1163.0, 766.0, 80.0, 22.0 ],
                    "text": "slide 30 5000"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234.0, 884.0, 29.5, 22.0 ],
                    "text": "30."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-86",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1493.0, 1049.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1466.5, 948.0, 30.0, 22.0 ],
                    "text": "* 30"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-76",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1550.0, 959.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1546.0, 782.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-64",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1372.0, 838.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1360.0, 712.0, 43.0, 22.0 ],
                    "text": "* 5000"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1567.0, 861.0, 29.5, 22.0 ],
                    "text": "!= 1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-57",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1502.0, 698.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-55",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1468.0, 519.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1506.0, 640.0, 29.5, 22.0 ],
                    "text": "&&"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-47",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1372.0, 504.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1464.0, 467.0, 42.0, 22.0 ],
                    "text": "> 0.99"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1402.0, 452.0, 30.0, 22.0 ],
                    "text": "> -3"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 118.0, 275.0, 150.0, 62.0 ],
                    "text": "Bolhas Grandes sensor 3\nbolhas pequenas sensor 5\n\n"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 929.0, 610.0, 42.0, 22.0 ],
                    "text": "> 0.09"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 854.0, 604.0, 46.0, 22.0 ],
                    "text": "< -0.09"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 881.0, 989.0, 47.0, 22.0 ],
                    "text": "*~ 0.07"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 877.0, 897.0, 144.0, 22.0 ],
                    "text": "abl.dsp.bubble~ 30 10 10"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 0,
                    "patching_rect": [ 342.0, 1054.0, 105.0, 22.0 ],
                    "text": "dac~ 7 5 8 2 3 1 8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 3,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 42.0, 85.0, 1223.0, 892.0 ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 332.0, 106.0, 87.0, 22.0 ],
                                    "text": "speedlim 1000"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 152.0, 78.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 227.0, 302.5, 32.0, 22.0 ],
                                    "text": "mtof"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 16.0, 237.0, 29.5, 22.0 ],
                                    "text": "$2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 16.0, 276.0, 39.0, 22.0 ],
                                    "text": "/ 127."
                                }
                            },
                            {
                                "box": {
                                    "activehandlecolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "activelinecolor": [ 0.569847917882419, 0.696305670064156, 0.902714598070707, 1.0 ],
                                    "activeslopehandlecolor": [ 1.0, 0.4, 0.3, 1.0 ],
                                    "attack_slope": 0.518041237113401,
                                    "attack_time": 3.391099492980334,
                                    "decay_time": 684.4558376821863,
                                    "id": "obj-19",
                                    "maxclass": "live.adsrui",
                                    "numinlets": 10,
                                    "numoutlets": 10,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 26.0, 315.0, 104.67999999999998, 50.0 ],
                                    "peak": 0.952941176470587,
                                    "release_time": 386.8017615810549,
                                    "saved_attribute_attributes": {
                                        "activehandlecolor": {
                                            "expression": "themecolor.live_control_selection"
                                        },
                                        "activelinecolor": {
                                            "expression": "themecolor.live_value_arc"
                                        },
                                        "activeslopehandlecolor": {
                                            "expression": "themecolor.live_active_automation"
                                        }
                                    },
                                    "sustain": 0.08000000000000008
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 3,
                                    "outlettype": [ "signal", "signal", "" ],
                                    "patching_rect": [ 16.0, 374.0, 115.0, 23.0 ],
                                    "text": "live.adsr~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 31.0, 431.0, 34.0, 22.0 ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 227.0, 237.5, 29.5, 22.0 ],
                                    "text": "$1"
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-24",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 353.0, 143.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 231.0, 140.0, 120.0, 25.0 ],
                                    "text": "play some notes"
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpargs.js",
                                    "id": "obj-13",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "abl.dsp.harmonicfm~", 30 ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 428.0, 350.0, 199.47898864746094, 69.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 227.0, 374.5, 197.0, 22.0 ],
                                    "text": "abl.dsp.harmonicfm~ 300 0.22 0.16"
                                }
                            },
                            {
                                "box": {
                                    "channels": 1,
                                    "id": "obj-2",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "orientation": 1,
                                    "outlettype": [ "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 144.0, 611.0, 136.0, 41.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -12 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.gain~",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "spectroscope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 227.0, 472.0, 229.0, 82.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-28",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 178.0, 534.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 68.0, 531.0, 108.0, 25.0 ],
                                    "text": "turn on audio"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 16.0, 517.0, 45.0, 45.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "amount",
                                    "id": "obj-5",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 313.0, 276.5, 150.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "ratio",
                                    "id": "obj-9",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 313.0, 302.5, 150.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 1065.0, 769.0, 34.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1331.0, 171.0, 37.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 176.0, 85.0, 37.0, 22.0 ],
                                    "text": "Store"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 976.0, 180.0, 22.0, 22.0 ],
                                    "text": "t 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1014.0, 180.0, 47.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 83.0, 85.0, 47.0, 22.0 ],
                                    "text": "Restart"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 846.0, 352.0, 35.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 7.0, 142.0, 35.0, 22.0 ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 846.0, 323.0, 32.0, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 7.0, 113.0, 32.0, 22.0 ],
                                    "text": "right"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 899.0, 219.0, 215.0, 22.0 ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 3,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 106.0, 358.0, 304.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 21.0, 145.0, 22.0, 22.0 ],
                                                    "text": "t b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "(anything) clear",
                                                    "id": "obj-2",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 21.0, 19.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 21.0, 184.0, 89.0, 22.0 ],
                                                    "text": "loadmess clear"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 145.0, 86.0, 22.0 ],
                                                    "text": "setcell $2 $1 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "patching_rect": [ 121.0, 66.0, 112.0, 22.0 ],
                                                    "text": "t l b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 214.0, 105.0, 38.0, 22.0 ],
                                                    "text": "zl reg"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 121.0, 145.0, 86.0, 22.0 ],
                                                    "text": "setcell $2 $1 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-54",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 121.0, 19.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-61",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 121.0, 184.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-52", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 1014.0, 353.0, 65.0, 22.0 ],
                                    "text": "p Highlight"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1060.0, 295.0, 54.0, 22.0 ],
                                    "text": "pack 0 0"
                                }
                            },
                            {
                                "box": {
                                    "amountcolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "bgstepcolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "bgstepcolor2": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "bordercolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "bordercolor2": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "columns": 8,
                                    "direction": 0,
                                    "directioncolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "freezecolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "hbgcolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "id": "obj-29",
                                    "ignoreclick": 1,
                                    "marker_horizontal": 0,
                                    "marker_vertical": 0,
                                    "matrixmode": 1,
                                    "maxclass": "live.grid",
                                    "numinlets": 2,
                                    "numoutlets": 6,
                                    "outlettype": [ "", "", "", "", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1014.0, 392.0, 104.0, 41.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 2.0, 22.0, 208.0, 40.0 ],
                                    "rounded": 6.0,
                                    "rows": 5,
                                    "saved_attribute_attributes": {
                                        "bgstepcolor": {
                                            "expression": ""
                                        },
                                        "bgstepcolor2": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "bordercolor2": {
                                            "expression": ""
                                        },
                                        "directioncolor": {
                                            "expression": ""
                                        },
                                        "stepcolor": {
                                            "expression": ""
                                        },
                                        "valueof": {
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Steps[1]",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Steps",
                                            "parameter_type": 3
                                        }
                                    },
                                    "stepcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "varname": "StepHighlights"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-81",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1372.0, 71.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-tempo.svg", "smallstep-tempo.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 2.0, 4.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon[3]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Icon",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon[5]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 3,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 106.0, 285.0, 338.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "patching_rect": [ 20.0, 19.0, 58.0, 22.0 ],
                                                    "text": "loadbang"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-69",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 20.0, 138.0, 67.0, 22.0 ],
                                                    "text": "zl nth 4 0.3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-68",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.0, 177.0, 102.0, 22.0 ],
                                                    "text": "prepend hbgcolor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 20.0, 60.0, 139.0, 22.0 ],
                                                    "text": "\"LCD Text / Icon Variant\""
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "list", "bang" ],
                                                    "patching_rect": [ 20.0, 99.0, 68.0, 22.0 ],
                                                    "text": "themecolor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-78",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 68.0, 216.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-61", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-69", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-68", 0 ],
                                                    "source": [ "obj-69", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 915.0, 256.0, 94.0, 22.0 ],
                                    "text": "p HighlightColor"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-60",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1389.0, 71.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-timediv.svg", "smallstep-timediv.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 41.0, 4.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon[6]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Icon",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon[6]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-59",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1348.0, 126.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-length.svg", "smallstep-length.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 127.0, 4.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon[5]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Icon",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-58",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1331.0, 126.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-velocity.svg", "smallstep-velocity.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 86.0, 4.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon[4]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Icon",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon[1]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-57",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1331.0, 98.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-octave.svg", "smallstep-octave.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 161.0, 63.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon[1]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Icon",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon[2]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-56",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1331.0, 71.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-root.svg", "smallstep-root.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 2.0, 63.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Icon",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon[3]"
                                }
                            },
                            {
                                "box": {
                                    "activebgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "activebgoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "activetextcolor": [ 0.646422957034409, 0.64642278576055, 0.646422830202315, 1.0 ],
                                    "activetextoncolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "bgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bgoncolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "bordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "focusbordercolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "id": "obj-55",
                                    "ignoreclick": 1,
                                    "inactivelcdcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "labeltextcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdbgcolor": [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
                                    "lcdcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 1372.0, 93.0, 15.0, 15.0 ],
                                    "pictures": [ "smallstep-chord.svg", "smallstep-chord.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 58.0, 63.0, 15.0, 15.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgcolor": {
                                            "expression": ""
                                        },
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "activetextcolor": {
                                            "expression": "themecolor.live_display_scale_text"
                                        },
                                        "activetextoncolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "bgcolor": {
                                            "expression": ""
                                        },
                                        "bgoncolor": {
                                            "expression": ""
                                        },
                                        "bordercolor": {
                                            "expression": ""
                                        },
                                        "focusbordercolor": {
                                            "expression": ""
                                        },
                                        "inactivelcdcolor": {
                                            "expression": ""
                                        },
                                        "labeltextcolor": {
                                            "expression": ""
                                        },
                                        "lcdbgcolor": {
                                            "expression": ""
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "textcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        },
                                        "textoffcolor": {
                                            "expression": "themecolor.live_lcd_title"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "val1", "val2" ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Icon[2]",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.text[1]",
                                            "parameter_type": 2
                                        }
                                    },
                                    "textcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "textoffcolor": [ 0.739671451839917, 0.739671266475177, 0.739671314712202, 1.0 ],
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Icon[4]"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 4,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Length",
                                    "id": "obj-51",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1052.0, 693.0, 49.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 141.0, 4.0, 38.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 50 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Length",
                                            "parameter_mmax": 100.0,
                                            "parameter_modmode": 4,
                                            "parameter_shortname": "Length",
                                            "parameter_type": 0,
                                            "parameter_units": "%.0f %",
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "textjustification": 0,
                                    "varname": "Length"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 4,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Velocity",
                                    "id": "obj-50",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 981.0, 693.0, 48.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 100.0, 4.0, 27.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 100 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Velocity",
                                            "parameter_modmode": 4,
                                            "parameter_shortname": "Velocity",
                                            "parameter_type": 1,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textjustification": 0,
                                    "varname": "Velocity"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 4,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Time Division",
                                    "id": "obj-49",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1176.0, 29.0, 48.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 55.0, 4.0, 31.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "1/1", "1/2", "1/4", "1/8", "1/16", "1/32", "1/64" ],
                                            "parameter_initial": [ 4 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Division",
                                            "parameter_mmax": 6,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Division",
                                            "parameter_type": 2,
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "textjustification": 0,
                                    "varname": "Division"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 4,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Octave",
                                    "id": "obj-46",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 974.0, 579.0, 51.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 175.0, 63.0, 36.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Octave",
                                            "parameter_mmax": 5.0,
                                            "parameter_mmin": -5.0,
                                            "parameter_modmode": 4,
                                            "parameter_shortname": "Octave",
                                            "parameter_type": 1,
                                            "parameter_units": "Oct",
                                            "parameter_unitstyle": 9
                                        }
                                    },
                                    "textjustification": 0,
                                    "varname": "Octave"
                                }
                            },
                            {
                                "box": {
                                    "appearance": 4,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Tempo",
                                    "id": "obj-30",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.numbox",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 943.0, 29.0, 48.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 16.0, 4.0, 27.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 120 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Tempo",
                                            "parameter_mmax": 999.0,
                                            "parameter_mmin": 10.0,
                                            "parameter_modmode": 4,
                                            "parameter_shortname": "Tempo",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 0
                                        }
                                    },
                                    "textjustification": 0,
                                    "varname": "Tempo"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "bang" ],
                                    "patching_rect": [ 1412.0, 210.0, 32.0, 22.0 ],
                                    "text": "t 1 b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1412.0, 171.0, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 1331.0, 210.0, 39.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-83",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1425.0, 249.0, 221.0, 23.0 ],
                                    "text": "read smallstep-twohits.json"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-79",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1351.0, 249.0, 50.0, 23.0 ],
                                    "text": "store 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-77",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1331.0, 289.0, 222.0, 23.0 ],
                                    "text": "write smallstep-twohits.json"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 1335.0, 29.0, 56.0, 22.0 ],
                                    "restore": {
                                        "Chord": [ 9.0 ],
                                        "Division": [ 3.0 ],
                                        "Length": [ 67.71653543307093 ],
                                        "Octave": [ 0.0 ],
                                        "Root": [ 5.0 ],
                                        "Steps": [ 3, 8, 5, 0, 6, 0, 3000, 5001, 5002, 7001, 7002, 2, 2, 2, 2, 2, 2, 2, 2 ],
                                        "Tempo": [ 73.99999999999997 ],
                                        "Velocity": [ 110.0 ],
                                        "live.gain~": [ -17.078675082970044 ]
                                    },
                                    "text": "autopattr",
                                    "varname": "u492001236[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1331.0, 326.0, 159.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "client_rect": [ 4, 44, 358, 172 ],
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0,
                                        "storage_rect": [ 583, 69, 1034, 197 ]
                                    },
                                    "text": "pattrstorage @autorestore 0",
                                    "varname": "u492001236"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 3,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 496.0, 128.0, 294.0, 442.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 33.0, 309.0, 96.0, 22.0 ],
                                                    "text": "+ 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 110.0, 192.0, 30.0, 22.0 ],
                                                    "text": "* 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 110.0, 153.0, 29.5, 22.0 ],
                                                    "text": "/ 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 120.0, 70.0, 37.0, 22.0 ],
                                                    "text": "zl len"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 33.0, 153.0, 29.5, 22.0 ],
                                                    "text": "% 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 33.0, 70.0, 29.5, 22.0 ],
                                                    "text": "- 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 33.0, 348.0, 168.0, 22.0 ],
                                                    "text": "+ 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 33.0, 273.0, 70.0, 22.0 ],
                                                    "text": "zl mth 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 33.0, 192.0, 70.0, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 33.0, 231.0, 57.0, 22.0 ],
                                                    "text": "zl reg"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-66",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 182.0, 23.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-67",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 71.0, 23.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-68",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 33.0, 23.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-70",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 33.0, 387.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 1 ],
                                                    "source": [ "obj-42", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 1 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 1 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-68", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 926.0, 539.0, 141.0, 22.0 ],
                                    "text": "p GetChordNote"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 926.0, 650.0, 32.0, 22.0 ],
                                    "text": "+ 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 974.0, 650.0, 32.0, 22.0 ],
                                    "text": "+ 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 974.0, 611.0, 30.0, 22.0 ],
                                    "text": "* 12"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 47,
                                        "data": [
                                            {
                                                "key": "Major",
                                                "value": [ 0, 4, 7 ]
                                            },
                                            {
                                                "key": "Minor",
                                                "value": [ 0, 3, 7 ]
                                            },
                                            {
                                                "key": "Power Chord (5)",
                                                "value": [ 0, 7 ]
                                            },
                                            {
                                                "key": "Dominant 7th",
                                                "value": [ 0, 4, 7, 10 ]
                                            },
                                            {
                                                "key": "Major 7th",
                                                "value": [ 0, 4, 7, 11 ]
                                            },
                                            {
                                                "key": "Minor 7th",
                                                "value": [ 0, 3, 7, 10 ]
                                            },
                                            {
                                                "key": "Minor Major 7th",
                                                "value": [ 0, 3, 7, 11 ]
                                            },
                                            {
                                                "key": "Suspended 4th",
                                                "value": [ 0, 5, 7 ]
                                            },
                                            {
                                                "key": "Suspended 2nd",
                                                "value": [ 0, 2, 7 ]
                                            },
                                            {
                                                "key": "Major 6th",
                                                "value": [ 0, 4, 7, 9 ]
                                            },
                                            {
                                                "key": "Minor 6th",
                                                "value": [ 0, 3, 7, 9 ]
                                            },
                                            {
                                                "key": "Dominant 9th",
                                                "value": [ 0, 4, 7, 10, 14 ]
                                            },
                                            {
                                                "key": "Minor 9th",
                                                "value": [ 0, 3, 7, 10, 14 ]
                                            },
                                            {
                                                "key": "Major 9th",
                                                "value": [ 0, 4, 7, 11, 14 ]
                                            },
                                            {
                                                "key": "Minor Major 9th",
                                                "value": [ 0, 3, 7, 11, 14 ]
                                            },
                                            {
                                                "key": "Major add 9",
                                                "value": [ 0, 4, 7, 14 ]
                                            },
                                            {
                                                "key": "Minor add 9",
                                                "value": [ 0, 3, 7, 14 ]
                                            },
                                            {
                                                "key": "Major 6th add 9",
                                                "value": [ 0, 4, 7, 9, 14 ]
                                            },
                                            {
                                                "key": "Minor 6th add 9",
                                                "value": [ 0, 3, 7, 9, 14 ]
                                            },
                                            {
                                                "key": "Dominant 7th add 11",
                                                "value": [ 0, 4, 7, 10, 17 ]
                                            },
                                            {
                                                "key": "Major 7th add 11",
                                                "value": [ 0, 4, 7, 11, 17 ]
                                            },
                                            {
                                                "key": "Minor 7th add 11",
                                                "value": [ 0, 3, 7, 10, 17 ]
                                            },
                                            {
                                                "key": "Minor Major 7th add 11",
                                                "value": [ 0, 3, 7, 11, 17 ]
                                            },
                                            {
                                                "key": "Dominant 7th add 13",
                                                "value": [ 0, 4, 7, 10, 21 ]
                                            },
                                            {
                                                "key": "Major 7th add 13",
                                                "value": [ 0, 4, 7, 11, 21 ]
                                            },
                                            {
                                                "key": "Minor 7th add 13",
                                                "value": [ 0, 3, 7, 10, 21 ]
                                            },
                                            {
                                                "key": "Minor Major 7th add 13",
                                                "value": [ 0, 3, 7, 11, 21 ]
                                            },
                                            {
                                                "key": "Dominant 7th flat 5",
                                                "value": [ 0, 4, 6, 10 ]
                                            },
                                            {
                                                "key": "Dominant 7th sharp 5",
                                                "value": [ 0, 4, 8, 10 ]
                                            },
                                            {
                                                "key": "Dominant 7th flat 9",
                                                "value": [ 0, 4, 7, 10, 13 ]
                                            },
                                            {
                                                "key": "Dominant 7th sharp 9",
                                                "value": [ 0, 4, 7, 10, 15 ]
                                            },
                                            {
                                                "key": "Dominant 7th sharp 5 flat 9",
                                                "value": [ 0, 4, 8, 10, 13 ]
                                            },
                                            {
                                                "key": "Minor 7th flat 5",
                                                "value": [ 0, 3, 6, 10 ]
                                            },
                                            {
                                                "key": "Minor 7th sharp 5",
                                                "value": [ 0, 3, 8, 10 ]
                                            },
                                            {
                                                "key": "Minor 7th flat 9",
                                                "value": [ 0, 3, 7, 10, 13 ]
                                            },
                                            {
                                                "key": "Major 6th Sus 4th",
                                                "value": [ 0, 5, 7, 9 ]
                                            },
                                            {
                                                "key": "Dominant 7th Sus 4th",
                                                "value": [ 0, 5, 7, 10 ]
                                            },
                                            {
                                                "key": "Major 7th Sus 4th",
                                                "value": [ 0, 5, 7, 11 ]
                                            },
                                            {
                                                "key": "Dominant 9th Sus 4th",
                                                "value": [ 0, 5, 7, 10, 14 ]
                                            },
                                            {
                                                "key": "Major 9th Sus 4th",
                                                "value": [ 0, 5, 7, 11, 14 ]
                                            },
                                            {
                                                "key": "Major 7th flat 5",
                                                "value": [ 0, 4, 6, 11 ]
                                            },
                                            {
                                                "key": "Dominant 7th # 11",
                                                "value": [ 0, 4, 7, 10, 18 ]
                                            },
                                            {
                                                "key": "Dominant 7th Sus 2nd",
                                                "value": [ 0, 2, 7, 10 ]
                                            },
                                            {
                                                "key": "Diminished",
                                                "value": [ 0, 3, 6 ]
                                            },
                                            {
                                                "key": "Diminished 7th",
                                                "value": [ 0, 3, 6, 9 ]
                                            },
                                            {
                                                "key": "Augmented",
                                                "value": [ 0, 4, 8 ]
                                            },
                                            {
                                                "key": "Flat 5th",
                                                "value": [ 0, 4, 6 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 987.0, 500.0, 89.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll @embed 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "float" ],
                                    "patching_rect": [ 1176.0, 728.0, 30.0, 22.0 ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 1082.0, 728.0, 30.0, 22.0 ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1176.0, 690.0, 261.0, 22.0 ],
                                    "text": "translate notevalues ms @transport 1000-smsp"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 943.0, 61.0, 89.0, 22.0 ],
                                    "text": "prepend tempo"
                                }
                            },
                            {
                                "box": {
                                    "coll_data": {
                                        "count": 7,
                                        "data": [
                                            {
                                                "key": 0,
                                                "value": [ 1 ]
                                            },
                                            {
                                                "key": 1,
                                                "value": [ 2 ]
                                            },
                                            {
                                                "key": 2,
                                                "value": [ 4 ]
                                            },
                                            {
                                                "key": 3,
                                                "value": [ 8 ]
                                            },
                                            {
                                                "key": 4,
                                                "value": [ 16 ]
                                            },
                                            {
                                                "key": 5,
                                                "value": [ 32 ]
                                            },
                                            {
                                                "key": 6,
                                                "value": [ 64 ]
                                            }
                                        ]
                                    },
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 1176.0, 62.0, 89.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "embed": 1,
                                        "precision": 6
                                    },
                                    "text": "coll @embed 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1176.0, 101.0, 85.0, 22.0 ],
                                    "text": "sprintf %sn%s"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 899.0, 140.0, 265.0, 23.0 ],
                                    "text": "metro 16n @transport 1000-smsp @active 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 9,
                                    "outlettype": [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
                                    "patching_rect": [ 899.0, 100.0, 255.0, 23.0 ],
                                    "text": "transport @name 1000-smsp @tempo 120"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 926.0, 767.0, 129.0, 22.0 ],
                                    "text": "pack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 926.0, 728.0, 129.0, 22.0 ],
                                    "text": "makenote"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "appearance": 1,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Root",
                                    "id": "obj-45",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 1075.0, 539.0, 44.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 16.0, 63.0, 40.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab", "A", "A#/Bb", "B" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "Root",
                                            "parameter_mmax": 11,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Root",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "Root"
                                }
                            },
                            {
                                "box": {
                                    "annotation": "",
                                    "appearance": 1,
                                    "fontname": "Ableton Sans Small",
                                    "fontsize": 10.0,
                                    "hint": "Chord",
                                    "id": "obj-47",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.menu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "float" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 946.0, 468.0, 100.0, 15.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 72.0, 63.0, 84.0, 15.0 ],
                                    "saved_attribute_attributes": {
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "Major", "Minor", "Power Chord (5)", "Dominant 7th", "Major 7th", "Minor 7th", "Minor Major 7th", "Suspended 4th", "Suspended 2nd", "Major 6th", "Minor 6th", "Dominant 9th", "Minor 9th", "Major 9th", "Minor Major 9th", "Major add 9", "Minor add 9", "Major 6th add 9", "Minor 6th add 9", "Dominant 7th add 11", "Major 7th add 11", "Minor 7th add 11", "Minor Major 7th add 11", "Dominant 7th add 13", "Major 7th add 13", "Minor 7th add 13", "Minor Major 7th add 13", "Dominant 7th flat 5", "Dominant 7th sharp 5", "Dominant 7th flat 9", "Dominant 7th sharp 9", "Dominant 7th sharp 5 flat 9", "Minor 7th flat 5", "Minor 7th sharp 5", "Minor 7th flat 9", "Major 6th Sus 4th", "Dominant 7th Sus 4th", "Major 7th Sus 4th", "Dominant 9th Sus 4th", "Major 9th Sus 4th", "Major 7th flat 5", "Dominant 7th # 11", "Dominant 7th Sus 2nd", "Diminished", "Diminished 7th", "Augmented", "Flat 5th" ],
                                            "parameter_initial": [ 0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_linknames": 1,
                                            "parameter_longname": "Chord",
                                            "parameter_mmax": 46,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Chord",
                                            "parameter_type": 2
                                        }
                                    },
                                    "varname": "Chord"
                                }
                            },
                            {
                                "box": {
                                    "activebgoncolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "annotation": "",
                                    "appearance": 2,
                                    "automation": "Stop",
                                    "automationon": "Run",
                                    "fontsize": 20.0,
                                    "hint": "Play",
                                    "id": "obj-64",
                                    "lcdcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "maxclass": "live.text",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 1,
                                    "parameter_mappable": 0,
                                    "patching_rect": [ 899.0, 60.0, 37.0, 23.0 ],
                                    "pictures": [ "smallstep-play.svg", "smallstep-play.svg" ],
                                    "presentation": 1,
                                    "presentation_rect": [ 183.0, 2.0, 28.0, 19.0 ],
                                    "remapsvgcolors": 1,
                                    "saved_attribute_attributes": {
                                        "activebgoncolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "lcdcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_enum": [ "Stop", "Run" ],
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Play",
                                            "parameter_mmax": 1,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Play",
                                            "parameter_type": 2
                                        }
                                    },
                                    "text": "►",
                                    "texton": "►",
                                    "usepicture": 1,
                                    "usesvgviewbox": 1,
                                    "varname": "Play"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 899.0, 353.0, 46.0, 22.0 ],
                                    "text": "route 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 899.0, 180.0, 69.0, 22.0 ],
                                    "text": "counter 1 8"
                                }
                            },
                            {
                                "box": {
                                    "amountcolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "bgstepcolor": [ 0.3, 0.3, 0.3, 1.0 ],
                                    "bgstepcolor2": [ 0.3, 0.3, 0.3, 1.0 ],
                                    "bordercolor": [ 1.0, 0.490196078431373, 0.262745098039216, 1.0 ],
                                    "bordercolor2": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "columns": 8,
                                    "direction": 0,
                                    "directioncolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "freezecolor": [ 0.850980392156863, 0.850980392156863, 0.850980392156863, 0.0 ],
                                    "hbgcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.3 ],
                                    "hint": "Steps",
                                    "id": "obj-53",
                                    "marker_horizontal": 0,
                                    "marker_vertical": 0,
                                    "matrixmode": 1,
                                    "maxclass": "live.grid",
                                    "numinlets": 2,
                                    "numoutlets": 6,
                                    "outlettype": [ "", "", "", "", "", "" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 899.0, 295.0, 104.0, 41.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 2.0, 22.0, 208.0, 40.0 ],
                                    "rounded": 6.0,
                                    "rows": 5,
                                    "saved_attribute_attributes": {
                                        "bgstepcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_zombie"
                                        },
                                        "bgstepcolor2": {
                                            "expression": "themecolor.live_lcd_control_fg_zombie"
                                        },
                                        "bordercolor": {
                                            "expression": "themecolor.live_alert"
                                        },
                                        "bordercolor2": {
                                            "expression": ""
                                        },
                                        "directioncolor": {
                                            "expression": ""
                                        },
                                        "stepcolor": {
                                            "expression": "themecolor.live_lcd_control_fg_alt"
                                        },
                                        "valueof": {
                                            "parameter_initial": [ 3, 8, 5, 0, 11, 0, 1004, 2001, 3000, 4002, 5000, 5002, 6001, 6003, 7000, 7004, 2, 2, 2, 2, 2, 2, 2, 2 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_invisible": 2,
                                            "parameter_longname": "Steps",
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "Steps",
                                            "parameter_type": 3
                                        }
                                    },
                                    "stepcolor": [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
                                    "varname": "Steps"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 926.0, 431.0, 49.0, 22.0 ],
                                    "text": "zl nth 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 926.0, 392.0, 71.0, 22.0 ],
                                    "text": "zl scramble"
                                }
                            },
                            {
                                "box": {
                                    "angle": 270.0,
                                    "background": 1,
                                    "bgcolor": [ 0.115294692691561, 0.115294651721827, 0.11529466236238, 1.0 ],
                                    "id": "obj-65",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1423.0, 29.0, 41.0, 40.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 0.0, 0.0, 213.0, 80.0 ],
                                    "proportion": 0.39,
                                    "rounded": 4,
                                    "saved_attribute_attributes": {
                                        "bgfillcolor": {
                                            "expression": "themecolor.live_lcd_bg"
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 846.0, 295.0, 29.5, 22.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 7.0, 85.0, 29.5, 22.0 ],
                                    "text": "left"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "midpoints": [ 1074.5, 821.0, 1126.51171875, 821.0, 1126.51171875, 343.0, 1023.5, 343.0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 10 ],
                                    "source": [ "obj-19", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 9 ],
                                    "source": [ "obj-19", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 8 ],
                                    "source": [ "obj-19", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 7 ],
                                    "source": [ "obj-19", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 6 ],
                                    "source": [ "obj-19", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 5 ],
                                    "source": [ "obj-19", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 4 ],
                                    "source": [ "obj-19", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 3 ],
                                    "source": [ "obj-19", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 2 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 1 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 2 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 1 ],
                                    "source": [ "obj-22", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 1 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 1 ],
                                    "source": [ "obj-31", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 2 ],
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 1 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 1 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "order": 0,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 1 ],
                                    "order": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 0,
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 1,
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 0,
                                    "source": [ "obj-44", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 1 ],
                                    "order": 1,
                                    "source": [ "obj-44", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 2 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-47", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-48", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 1 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-51", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-53", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "order": 0,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "order": 1,
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [ 0.501961, 0.501961, 0.501961, 0.901961 ],
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "hidden": 1,
                                    "order": 7,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "hidden": 1,
                                    "order": 1,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "hidden": 1,
                                    "order": 6,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "hidden": 1,
                                    "order": 5,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "hidden": 1,
                                    "order": 4,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "hidden": 1,
                                    "order": 3,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "hidden": 1,
                                    "order": 0,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "hidden": 1,
                                    "order": 8,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "hidden": 1,
                                    "order": 2,
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-79", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-79", 0 ],
                                    "source": [ "obj-84", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-86", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 630.0, 849.0, 36.0, 22.0 ],
                    "style": "redness",
                    "text": "p FM",
                    "varname": "FM"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 3,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1639.0, 882.0 ],
                        "showontab": 2,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontname": "Arial Bold",
                                    "hint": "",
                                    "id": "obj-6",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 116.0, 356.0, 26.0, 24.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "1",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 348.0, 63.528900146484375, 40.0 ],
                                    "text": "start audio"
                                }
                            },
                            {
                                "box": {
                                    "channels": 1,
                                    "id": "obj-4",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "orientation": 1,
                                    "outlettype": [ "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 50.0, 290.0, 136.0, 30.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -40 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "live.gain~[4]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "showname": 0,
                                    "varname": "live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-5",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 27.0, 219.0, 115.0, 36.0 ],
                                    "style": "helpfile_label",
                                    "text": "Signal is speed; float is start point."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-26",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 177.0, 219.0, 152.0, 36.0 ],
                                    "style": "helpfile_label",
                                    "text": "Loop points (ms) can be either signal or float."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-36",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 211.0, 277.0, 71.0, 36.0 ],
                                    "style": "helpfile_label",
                                    "text": "loop sync  (0. - 1.)"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-39",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 0.0, 121.0, 25.0 ],
                                    "text": "turn looping on"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-43",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 279.0, 78.0, 80.0, 55.0 ],
                                    "text": "set playback speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-47",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 0.0, 3.0, 46.0, 23.0 ],
                                    "text": "loop 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-52",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 110.0, 151.0, 21.0 ],
                                    "style": "helpfile_label",
                                    "text": "reverse at normal speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 111.0, 32.5, 23.0 ],
                                    "text": "-1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 83.0, 151.0, 21.0 ],
                                    "style": "helpfile_label",
                                    "text": "forward at normal speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-56",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 84.0, 32.5, 23.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 123.0, 136.0, 46.0, 21.0 ],
                                    "style": "helpfile_label",
                                    "text": "pause"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-58",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.0, 137.0, 32.5, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 36.0, 171.0, 35.0, 23.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-64",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 421.0, 203.0, 166.0, 40.0 ],
                                    "text": "set maximum loop point (default = end)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "format": 6,
                                    "id": "obj-66",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 329.0, 213.0, 87.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-72",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 207.0, 399.0, 261.0, 36.0 ],
                                    "style": "helpfile_label",
                                    "text": "groove~ \"helpgroove01\" plays the samples stored  in buffer~  \"helpgroove01\""
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-74",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 77.0, 31.0, 158.0, 40.0 ],
                                    "text": "start playback at 0 ms (beginning of sample)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-76",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 41.0, 42.0, 32.5, 23.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 211.0, 323.0, 200.0, 23.0 ],
                                    "text": "buffer~ isadora1 sapinhos.wav -1"
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-80",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 256.0, 162.0, 163.0, 40.0 ],
                                    "text": "set minimum loop point (default = beginning)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "format": 6,
                                    "id": "obj-82",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 164.0, 171.0, 87.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "local": 1,
                                    "maxclass": "ezdac~",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 0.0, 344.0, 44.0, 44.0 ],
                                    "prototypename": "helpfile"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 0.0, 255.0, 109.0, 23.0 ],
                                    "text": "groove~ isadora1"
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpargs.js",
                                    "id": "obj-88",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "groove~" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 349.0, 255.0, 222.76197814941406, 54.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-89",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 363.0, 94.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "4",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-90",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 238.0, 42.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "3",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [ 0.9, 0.65, 0.05, 1.0 ],
                                    "fontface": 1,
                                    "hint": "",
                                    "id": "obj-91",
                                    "ignoreclick": 1,
                                    "legacytextcolor": 1,
                                    "maxclass": "textbutton",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 177.0, 1.0, 20.0, 20.0 ],
                                    "rounded": 60.0,
                                    "saved_attribute_attributes": {
                                        "bgcolor": {
                                            "expression": "themecolor.lesson_step_circle"
                                        }
                                    },
                                    "text": "2",
                                    "textcolor": [ 0.34902, 0.34902, 0.34902, 1.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 1 ],
                                    "order": 0,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "order": 1,
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 2 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 0 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-86", 1 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 499.0, 809.0, 86.0, 22.0 ],
                    "style": "redness",
                    "text": "p sample_play"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 3,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1639.0, 882.0 ],
                        "showontab": 1,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 490.0, 640.0, 54.0, 22.0 ],
                                    "text": "svf~ 500"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-25",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 557.0, 52.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-23",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 580.0, 115.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 717.0, 18.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 0,
                                    "patching_rect": [ 298.0, 666.0, 115.0, 22.0 ],
                                    "text": "dac~ 1 2 3 4 5 6 7 8"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-58",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 964.0, 423.0, 150.0, 21.0 ],
                                    "text": "3: PLAY/OFFSET/SCRUB"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-57",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 832.0, 278.0, 139.0, 21.0 ],
                                    "text": "1000ms / size = Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-55",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 557.0, 174.0, 150.0, 21.0 ],
                                    "text": "SIZE * PITCH"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-53",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 664.0, 80.0, 83.0, 21.0 ],
                                    "text": "GRAIN SIZE"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-51",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 420.0, 451.0, 173.0, 63.0 ],
                                    "text": "2: PHASOR RAMP IS CONVERTED INTO A CURVED WINDOW TO HIDE ANY AUDIO DISCONTINUITIES OR CLICKS"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-50",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 849.0, 334.0, 150.0, 63.0 ],
                                    "text": "1: CENTRAL PHASOR DRIVES THE PLAY~ OBJECT WHICH READS FROM THE BUFFER"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 334.0, 37.0, 23.0 ],
                                    "text": "*~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-47",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 551.0, 227.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 195.0, 37.0, 23.0 ],
                                    "text": "*~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 849.0, 451.0, 50.0, 23.0 ],
                                    "text": "delta~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 902.0, 451.0, 37.0, 23.0 ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 818.0, 502.0, 50.0, 23.0 ],
                                    "text": "sah~ 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 585.0, 598.0, 32.5, 23.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.898039, 0.466667, 0.941176, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 585.0, 560.5, 50.0, 23.0 ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.898039, 0.466667, 0.941176, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 585.0, 521.5, 37.0, 23.0 ],
                                    "text": "+~ 1"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.898039, 0.466667, 0.941176, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 585.0, 482.5, 37.0, 23.0 ],
                                    "text": "cos~"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.898039, 0.466667, 0.941176, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 585.0, 451.0, 57.0, 23.0 ],
                                    "text": "!-~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 964.0, 62.0, 39.0, 39.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 964.0, 112.0, 50.0, 23.0 ],
                                    "text": "click~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 849.0, 112.0, 50.0, 23.0 ],
                                    "text": "delta~"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.035294, 0.270588, 0.682353, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 849.0, 80.0, 90.0, 23.0 ],
                                    "text": "receive~ fbk"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 227.0, 50.0, 23.0 ],
                                    "text": "sah~ 0"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.035294, 0.270588, 0.682353, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 636.0, 367.0, 73.0, 23.0 ],
                                    "text": "send~ fbk"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-15",
                                    "maxclass": "flonum",
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 996.0, 528.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 537.0, 90.0, 23.0 ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 408.0, 90.0, 23.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.568627, 0.952941, 0.25098, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 747.0, 568.0, 90.0, 23.0 ],
                                    "text": "play~ aSound"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 195.0, 485.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ 0.0 ],
                                            "parameter_longname": "live.gain~[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 0,
                                            "parameter_shortname": "live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 144.0, 57.0, 23.0 ],
                                    "text": "sig~ 80"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "minimum": 1.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 760.0, 74.0, 50.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 278.0, 63.0, 23.0 ],
                                    "text": "!/~ 1000"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 72.0, 123.0, 272.0, 23.0 ],
                                    "text": "buffer~ aSound nyctibios_Folhassecas.wav"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.568627, 0.952941, 0.25098, 1.0 ],
                                    "fontname": "Consolas",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 747.0, 367.0, 57.0, 23.0 ],
                                    "text": "phasor~"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 756.5, 388.0, 727.0, 388.0, 727.0, 357.0, 645.5, 357.0 ],
                                    "order": 2,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "midpoints": [ 756.5, 402.0, 594.5, 402.0 ],
                                    "order": 3,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "midpoints": [ 756.5, 399.5, 858.5, 399.5 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 1 ],
                                    "midpoints": [ 756.5, 260.0, 827.5, 260.0 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "midpoints": [ 858.5, 212.0, 787.5, 212.0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "midpoints": [ 973.5, 222.0, 787.5, 222.0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 1 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "order": 1,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 1 ],
                                    "order": 0,
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 6 ],
                                    "source": [ "obj-8", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 5 ],
                                    "order": 0,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 4 ],
                                    "order": 1,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 3 ],
                                    "order": 2,
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "order": 3,
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 968.0, 665.0, 63.0, 22.0 ],
                    "text": "p granular"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1350.0, 561.0, 150.0, 34.0 ],
                    "text": "Folhas \nsons de grava;'ao contato "
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 288.0, 709.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 144.0, 545.0, 100.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-48",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 447.0, 703.0, 112.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 438.375, 588.0, 29.5, 22.0 ],
                    "text": "&&"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 443.0, 540.0, 29.5, 22.0 ],
                    "text": "&&"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-44",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 604.0, 474.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 618.0, 423.0, 36.0, 22.0 ],
                    "text": "> 0.7"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 539.25, 480.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-38",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 461.50001299381256, 480.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 457.0, 434.0, 30.0, 22.0 ],
                    "text": "> -3"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 693.0, 523.0, 29.5, 22.0 ],
                    "text": "< 3"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1106.0, 471.0, 28.0, 22.0 ],
                    "text": "abs"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1038.0, 446.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 891.0, 423.0, 33.0, 22.0 ],
                    "text": "- 0.8"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 965.0, 412.0, 28.0, 22.0 ],
                    "text": "abs"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1136.0, 553.0, 39.0, 22.0 ],
                    "text": "+ 400"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 965.0, 517.0, 28.0, 22.0 ],
                    "text": "abs"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 639.0, 540.0, 33.0, 22.0 ],
                    "text": "- 0.8"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 856.0, 471.0, 37.0, 22.0 ],
                    "text": "* 100"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 489.0, 598.0, 106.0, 22.0 ],
                    "text": "abl.dsp.distortion~"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1199.0, 567.0, 94.0, 22.0 ],
                    "text": "abl.dsp.bubble~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-37",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 701.0, 474.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 1256.0, 726.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-87",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1721.3333846330643, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-85",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1833.3333879709244, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-83",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1946.0, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-81",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1592.0, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-79",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1490.6667110919952, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-77",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1378.6667077541351, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-75",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1242.6667037010193, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-73",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1137.333367228508, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-71",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1025.333363890648, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-69",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 886.6666930913925, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-67",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 778.0, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-65",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 668.0000199079514, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-63",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 542.6666828393936, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-61",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 428.125, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-59",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 324.00000965595245, 348.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1833.3333879709244, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_1/x"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1938.6667244434357, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_1/y"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1721.3333846330643, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_1/z"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1490.6667110919952, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_2/x"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1596.0000475645065, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_2/y"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1378.6667077541351, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_2/z"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1137.333367228508, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_3/x"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1242.6667037010193, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_3/y"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1025.333363890648, 221.3333399295807, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_3/z"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 308.0, 968.0, 47.0, 22.0 ],
                    "text": "*~ 0.06"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 546.0, 1136.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-16",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 546.0, 1060.0, 136.0, 30.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~[3]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 302.0, 902.0, 157.0, 22.0 ],
                    "text": "abl.dsp.bubble~ 3000 10 10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 780.0000232458115, 217.3333398103714, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_4/x"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 886.6666930913925, 217.3333398103714, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_4/y"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 668.0000199079514, 217.3333398103714, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_4/z"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 436.00001299381256, 217.3333398103714, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_5/x"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 542.6666828393936, 217.3333398103714, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_5/y"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 324.00000965595245, 217.3333398103714, 101.0, 22.0 ],
                    "style": "velvet",
                    "text": "route /sensor_5/z"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1156.0000344514847, 40.000001192092896, 105.0, 23.0 ],
                    "text": "udpreceive 5555"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bubble_bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bubble_outlinecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "bubblepoint": 0.0,
                    "bubbleside": 2,
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1086.5853917598724, 13.414634466171265, 267.0731770992279, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1132.9268562793732, 15.000001192092896, 173.17073583602905, 34.0 ],
                    "text": "Port Control and OSC receive\n"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 1 ],
                    "order": 0,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "order": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 4,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "order": 3,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 5,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 2,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "order": 14,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 12,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 13,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "order": 10,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "order": 9,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "order": 11,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 7,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 6,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 8,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 1 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 6 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 4 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 3 ],
                    "order": 2,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 3,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 4,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 1 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 1 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 1 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 2 ],
                    "order": 0,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "order": 1,
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 0,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "order": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 0,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 1,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 3,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 2,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "order": 0,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 1 ],
                    "order": 1,
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "order": 1,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "order": 0,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 3,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 5,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "order": 2,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 4,
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 0,
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "order": 0,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 2 ],
                    "order": 1,
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 3,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "order": 2,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 0,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-16": [ "live.gain~[3]", "live.gain~", 0 ],
            "obj-92::obj-8": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-93::obj-4": [ "live.gain~[4]", "live.gain~", 0 ],
            "obj-96::obj-2": [ "live.gain~", "live.gain~", 0 ],
            "obj-96::obj-29": [ "Steps[1]", "Steps", 0 ],
            "obj-96::obj-30": [ "Tempo", "Tempo", 0 ],
            "obj-96::obj-45": [ "Root", "Root", 0 ],
            "obj-96::obj-46": [ "Octave", "Octave", 0 ],
            "obj-96::obj-47": [ "Chord", "Chord", 0 ],
            "obj-96::obj-49": [ "Division", "Division", 0 ],
            "obj-96::obj-50": [ "Velocity", "Velocity", 0 ],
            "obj-96::obj-51": [ "Length", "Length", 0 ],
            "obj-96::obj-53": [ "Steps", "Steps", 0 ],
            "obj-96::obj-55": [ "Icon[2]", "live.text[1]", 0 ],
            "obj-96::obj-56": [ "Icon", "Icon", 0 ],
            "obj-96::obj-57": [ "Icon[1]", "Icon", 0 ],
            "obj-96::obj-58": [ "Icon[4]", "Icon", 0 ],
            "obj-96::obj-59": [ "Icon[5]", "Icon", 0 ],
            "obj-96::obj-60": [ "Icon[6]", "Icon", 0 ],
            "obj-96::obj-64": [ "Play", "Play", 0 ],
            "obj-96::obj-81": [ "Icon[3]", "Icon", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "snapshot": {
            "filetype": "C74Snapshot",
            "version": 2,
            "minorversion": 0,
            "name": "snapshotlist",
            "origin": "jpatcher",
            "type": "list",
            "subtype": "Undefined",
            "embed": 1,
            "snapshotlist": {
                "current_snapshot": -1,
                "entries": [
                    {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "Xsens_master",
                        "origin": "Xsens_master",
                        "type": "patcher",
                        "subtype": "Undefined",
                        "embed": 0,
                        "snapshot": {
                            "valuedictionary": {
                                "parameter_values": {
                                    "live.gain~": -17.078675082970044,
                                    "live.gain~[1]": 0.0,
                                    "live.gain~[3]": -70.0,
                                    "live.gain~[4]": -40.0
                                }
                            }
                        },
                        "fileref": {
                            "name": "Xsens_master",
                            "filename": "Xsens_master.maxsnap",
                            "filepath": "~/Documents/Max 9/Snapshots",
                            "filepos": -1,
                            "snapshotfileid": "fe8eae65a6a3b2d947e8ccc5f14caf56"
                        }
                    }
                ]
            }
        }
    }
}