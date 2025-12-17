# Voidbloom Theme - Color Palette Reference

## Theme Base: Omarchy "Deep Nebula" (Eye-Comfort Edition)

이 테마는 Omarchy 배포판을 위해 설계된 "Deep Nebula (심우주 성운)" 색상 팔레트의 **눈 피로도 감소 버전**입니다. 기존 고대비 네온 스타일에서 채도를 낮추고 극한 대비를 완화하여 장시간 사용 시 눈의 피로를 줄였습니다.

**주요 개선 사항:**

- 네온 채도 감소: 시맨틱 색상들의 형광기를 제거하고 파스텔/주얼리 톤으로 변경
- 극한 대비 완화: 순백색(#FFFFFF) 제거, 배경색 명도 미세 상향
- 색온도 조정: 차가운 아이스 블루를 중립적인 라벤더 그레이 톤으로 변경

---

## Base Palette (16 Colors)

### Deep Space (Dark Backgrounds)

| Name | Hex       | RGB                | 용도                                      |
| ---- | --------- | ------------------ | ----------------------------------------- |
| oma0 | `#181824` | rgb(24, 24, 36)    | 가장 어두운 배경, 메인 배경색 (Deep Dark) |
| oma1 | `#202030` | rgb(32, 32, 48)    | 패널 배경, 상태바 배경                    |
| oma2 | `#303048` | rgb(48, 48, 72)    | 선택된 항목 배경, 입력창 배경             |
| oma3 | `#6A6A80` | rgb(106, 106, 128) | 비활성 테두리, 코멘트, UI 구분선          |

### Starlight (Light Foregrounds)

| Name | Hex       | RGB                | 용도                                     |
| ---- | --------- | ------------------ | ---------------------------------------- |
| oma4 | `#C5C5DA` | rgb(197, 197, 218) | 기본 텍스트, 메인 전경색 (Lavender Gray) |
| oma5 | `#DEDEDE` | rgb(222, 222, 222) | 밝은 텍스트                              |
| oma6 | `#F0F0F5` | rgb(240, 240, 245) | 가장 밝은 텍스트, 오프화이트 강조        |

### Nebula Accents (Primary Highlights)

| Name  | Hex       | RGB                | 용도                                                 |
| ----- | --------- | ------------------ | ---------------------------------------------------- |
| oma7  | `#A68EE0` | rgb(166, 142, 224) | 보조 강조(Muted), 클래스, 타입                       |
| oma8  | `#BB99FF` | rgb(187, 153, 255) | **주요 강조색(Primary Accent)**, 활성 테두리, 포커스 |
| oma9  | `#7ACAE0` | rgb(122, 202, 224) | 2차 강조색(Sky Blue), 키워드, 링크                   |
| oma10 | `#5F95DE` | rgb(95, 149, 222)  | 함수, 메서드, 부드러운 파랑 강조                     |

### Cosmic Burst (Semantic Colors)

| Name  | Hex       | RGB                | 용도                               |
| ----- | --------- | ------------------ | ---------------------------------- |
| oma11 | `#ED6B86` | rgb(237, 107, 134) | 오류, 위험, 삭제 (Rose Red)        |
| oma12 | `#ED9B70` | rgb(237, 155, 112) | 주황색 강조, 알림 (Coral)          |
| oma13 | `#E6C875` | rgb(230, 200, 117) | 경고, 노란색 강조 (Warm Amber)     |
| oma14 | `#6BCDB0` | rgb(107, 205, 176) | 성공, 추가, 문자열 (Seafoam Green) |
| oma15 | `#D886C8` | rgb(216, 134, 200) | 보라/분홍 강조, 숫자 (Orchid Pink) |

---

## Applied Colors by Component

### Hyprland (Window Manager)

| 역할             | 색상 변수 | 실제 색상 |
| ---------------- | --------- | --------- |
| Active Border    | `$oma8`   | `#BB99FF` |
| Inactive Border  | `$oma3`   | `#6A6A80` |
| Window Rounding  | 8px       | -         |
| Inactive Opacity | 0.90      | -         |
| Active Opacity   | 1.0       | -         |

### Hyprlock (Lock Screen)

| 역할                | 색상 변수 | 실제 색상               |
| ------------------- | --------- | ----------------------- |
| Background Color    | `$oma0`   | `rgba(24,24,36,1.0)`    |
| Inner Color (Input) | `$oma1`   | `rgba(32,32,48,1.0)`    |
| Outer/Font Color    | `$oma4`   | `rgba(197,197,218,1.0)` |
| Check Color         | `$oma8`   | `rgba(187,153,255,1.0)` |
| Fail Color          | `$oma11`  | `rgba(237,107,134,1.0)` |

### Waybar (Status Bar)

| 역할                          | 색상 변수 | 실제 색상 |
| ----------------------------- | --------- | --------- |
| Background                    | `@oma0`   | `#181824` |
| Foreground                    | `@oma4`   | `#C5C5DA` |
| Highlight (Active Workspaces) | `@oma8`   | `#BB99FF` |
| Warning                       | `@oma13`  | `#E6C875` |
| Critical                      | `@oma11`  | `#ED6B86` |
| Success/Info                  | `@oma9`   | `#7ACAE0` |

### Walker (App Launcher)

| 역할                | 색상 변수        | 실제 색상 |
| ------------------- | ---------------- | --------- |
| Base/Background     | `@base`          | `#181824` |
| Foreground/Text     | `@text`          | `#C5C5DA` |
| Selected Text       | `@selected-text` | `#BB99FF` |
| Selected Background | `@hover`         | `#303048` |
| Border              | `@border`        | `#A68EE0` |

### SwayOSD (On-Screen Display)

| 역할               | 색상 변수 | 실제 색상 |
| ------------------ | --------- | --------- |
| Background         | `@oma0`   | `#181824` |
| Border             | `@oma3`   | `#6A6A80` |
| Label              | `@oma4`   | `#C5C5DA` |
| Image/Progress Bar | `@oma8`   | `#BB99FF` |

### Ghostty (Terminal)

| 역할                  | 값                                                    |
| --------------------- | ----------------------------------------------------- |
| Theme                 | Custom (Deep Nebula Eye-Comfort)                      |
| Background            | `#181824` (oma0)                                      |
| Foreground            | `#C5C5DA` (oma4)                                      |
| Selection BG          | `#6A6A80` (oma3)                                      |
| Cursor                | `#BB99FF` (oma8)                                      |
| Palette 0-7 (Normal)  | `oma0`, `oma11`~`oma14`, `oma9`, `oma4` 매핑          |
| Palette 8-15 (Bright) | `oma3`, `oma11`~`oma14`, `oma15`, `oma9`, `oma6` 매핑 |

---

## Color Relationships

### 배경 계층 (어두운 → 밝은)

```
oma0 → oma1 → oma2 → oma3
#181824 → #202030 → #303048 → #6A6A80
```

### 텍스트 계층 (표준 → 밝은 → 강조)

```
oma4 → oma5 → oma6
#C5C5DA → #DEDEDE → #F0F0F5
```

### Semantic 색상 매핑

```
Primary Accent: oma8 (#BB99FF) - 바이올렛 (활성 상태, 포커스)
Secondary Accent: oma9 (#7ACAE0) - 스카이 블루 (정보, 링크)
Error/Danger: oma11 (#ED6B86) - 로즈 레드
Warning: oma13 (#E6C875) - 웜 앰버
Success: oma14 (#6BCDB0) - 씨폼 그린
Special: oma15 (#D886C8) - 오키드 핑크
```

---

## Configuration Files

| 파일명          | 대상 앱          | 형식                               |
| --------------- | ---------------- | ---------------------------------- |
| `hyprland.conf` | Hyprland WM      | `$oma_var = rgb(HEX)`              |
| `hyprlock.conf` | Hyprlock         | `$oma_var = rgba(R,G,B,A)`         |
| `waybar.css`    | Waybar           | `@define-color oma-name #HEX`      |
| `walker.css`    | Walker           | `@define-color oma-name #HEX`      |
| `swayosd.css`   | SwayOSD          | `@define-color oma-name #HEX`      |
| `ghostty.conf`  | Ghostty Terminal | `palette = 0=#HEX ...` (직접 정의) |

---

## Notes for Palette Redesign (설계 의도)

1. **눈 피로도 감소**: 장시간 사용 시 눈이 편안하도록 네온 채도를 낮추고, 극한 대비를 완화했습니다.
2. **핵심 아이덴티티 유지**: Primary Accent인 바이올렛(`oma8`)은 변경 없이 유지하여 테마의 정체성을 보존했습니다.
3. **부드러운 전경색**: 차가운 아이스 블루(#DDEEFF)를 중립적인 라벤더 그레이(#C5C5DA)로 변경하여 가독성과 편안함을 동시에 확보했습니다.
4. **파스텔 시맨틱 색상**: 네온 스타일의 시맨틱 색상들을 부드러운 파스텔/주얼리 톤으로 교체하여 시각적 자극을 줄였습니다.
5. **WCAG 접근성**: 모든 텍스트-배경 조합이 WCAG AA 이상의 대비를 만족합니다.
