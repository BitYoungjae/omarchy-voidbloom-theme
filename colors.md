# Spearhead Theme - Color Palette Reference

## Theme Base: Omarchy "Deep Nebula"

이 테마는 Omarchy 배포판을 위해 새로 설계된 고대비 "Deep Nebula (심우주 성운)" 색상 팔레트를 기반으로 합니다. 기존 Nord 대비 더 깊은 배경색과 명확한 바이올렛(Violet) 주 강조색을 사용하여 일관성과 미적 완성도를 높였습니다.

---

## Base Palette (16 Colors)

### Deep Space (Dark Backgrounds)

| Name | Hex       | RGB              | 용도                                      |
| ---- | --------- | ---------------- | ----------------------------------------- |
| oma0 | `#14141E` | rgb(20, 20, 30)  | 가장 어두운 배경, 메인 배경색 (Deep Dark) |
| oma1 | `#1A1A2E` | rgb(26, 26, 46)  | 패널 배경, 상태바 배경                    |
| oma2 | `#2A2A45` | rgb(42, 42, 69)  | 선택된 항목 배경, 입력창 배경             |
| oma3 | `#3E3E66` | rgb(62, 62, 102) | 비활성 테두리, 코멘트, UI 구분선          |

### Starlight (Light Foregrounds)

| Name | Hex       | RGB                | 용도                                  |
| ---- | --------- | ------------------ | ------------------------------------- |
| oma4 | `#DDEEFF` | rgb(221, 238, 255) | 기본 텍스트, 메인 전경색 (Cool White) |
| oma5 | `#E6F2FF` | rgb(230, 242, 255) | 밝은 텍스트                           |
| oma6 | `#FFFFFF` | rgb(255, 255, 255) | 가장 밝은 텍스트, 순백색 강조         |

### Nebula Accents (Primary Highlights)

| Name  | Hex       | RGB                | 용도                                                 |
| ----- | --------- | ------------------ | ---------------------------------------------------- |
| oma7  | `#9D7CD8` | rgb(157, 124, 216) | 보조 강조(Muted), 클래스, 타입                       |
| oma8  | `#BB99FF` | rgb(187, 153, 255) | **주요 강조색(Primary Accent)**, 활성 테두리, 포커스 |
| oma9  | `#66CCFF` | rgb(102, 204, 255) | 2차 강조색(Cyan), 키워드, 링크                       |
| oma10 | `#4488FF` | rgb(68, 136, 255)  | 함수, 메서드, 진한 파랑 강조                         |

### Cosmic Burst (Semantic Colors)

| Name  | Hex       | RGB                | 용도                            |
| ----- | --------- | ------------------ | ------------------------------- |
| oma11 | `#FF5577` | rgb(255, 85, 119)  | 오류, 위험, 삭제 (Vibrant Red)  |
| oma12 | `#FF9955` | rgb(255, 153, 85)  | 주황색 강조, 알림               |
| oma13 | `#FFDD66` | rgb(255, 221, 102) | 경고, 노란색 강조 (Gold Yellow) |
| oma14 | `#55FFBB` | rgb(85, 255, 187)  | 성공, 추가, 문자열 (Neon Mint)  |
| oma15 | `#FF77DD` | rgb(255, 119, 221) | 보라/분홍 강조, 숫자, 특수값    |

---

## Applied Colors by Component

### Hyprland (Window Manager)

_일관성 개선: 윈도우 라운딩을 10px로 통일하고, 활성 창의 불투명도를 1.0으로 설정하여 명확성을 높임._

| 역할             | 색상 변수 | 실제 색상 |
| ---------------- | --------- | --------- |
| Active Border    | `$oma8`   | `#BB99FF` |
| Inactive Border  | `$oma3`   | `#3E3E66` |
| Window Rounding  | 10px      | -         |
| Inactive Opacity | 0.90      | -         |
| Active Opacity   | 1.0       | -         |

### Hyprlock (Lock Screen)

_일관성 개선: 배경 투명도를 제거하여 잠금 화면의 안정감을 주고, 입력 확인 색상을 주요 강조색과 일치시킴._

| 역할                | 색상 변수 | 실제 색상               |
| ------------------- | --------- | ----------------------- |
| Background Color    | `$oma0`   | `rgba(20,20,30,1.0)`    |
| Inner Color (Input) | `$oma1`   | `rgba(26,26,46,1.0)`    |
| Outer/Font Color    | `$oma4`   | `rgba(221,238,255,1.0)` |
| Check Color         | `$oma8`   | `rgba(187,153,255,1.0)` |
| Fail Color          | `$oma11`  | `rgba(255,85,119,1.0)`  |

### Waybar (Status Bar)

| 역할                          | 색상 변수 | 실제 색상 |
| ----------------------------- | --------- | --------- |
| Background                    | `@oma0`   | `#14141E` |
| Foreground                    | `@oma4`   | `#DDEEFF` |
| Highlight (Active Workspaces) | `@oma8`   | `#BB99FF` |
| Warning                       | `@oma13`  | `#FFDD66` |
| Critical                      | `@oma11`  | `#FF5577` |
| Success/Info                  | `@oma9`   | `#66CCFF` |

### Walker (App Launcher)

| 역할                | 색상 변수 | 실제 색상 |
| ------------------- | --------- | --------- |
| Base/Background     | `@oma0`   | `#14141E` |
| Foreground/Text     | `@oma4`   | `#DDEEFF` |
| Selected Text       | `@oma8`   | `#BB99FF` |
| Selected Background | `@oma2`   | `#2A2A45` |
| Border              | `@oma8`   | `#BB99FF` |

### SwayOSD (On-Screen Display)

| 역할               | 색상 변수 | 실제 색상 |
| ------------------ | --------- | --------- |
| Background         | `@oma0`   | `#14141E` |
| Border             | `@oma3`   | `#3E3E66` |
| Label              | `@oma4`   | `#DDEEFF` |
| Image/Progress Bar | `@oma8`   | `#BB99FF` |

### Ghostty (Terminal)

_참고: Ghostty 설정 파일에 아래 16색 팔레트를 직접 정의해야 합니다._

| 역할                  | 값                                                      |
| --------------------- | ------------------------------------------------------- |
| Theme                 | Custom (Deep Nebula)                                    |
| Background            | `#14141E` (oma0)                                        |
| Foreground            | `#DDEEFF` (oma4)                                        |
| Selection BG          | `#3E3E66` (oma3)                                        |
| Cursor                | `#BB99FF` (oma8)                                        |
| Palette 0-7 (Normal)  | `oma0` ~ `oma7` 순서대로 매핑                           |
| Palette 8-15 (Bright) | `oma3`, `oma11` ~ `oma15`, `oma9`, `oma6` (조정된 매핑) |

---

## Color Relationships

### 배경 계층 (어두운 → 밝은)

```
oma0 → oma1 → oma2 → oma3
#14141E → #1A1A2E → #2A2A45 → #3E3E66
```

### 텍스트 계층 (표준 → 밝은 → 강조)

```
oma4 → oma5 → oma6
#DDEEFF → #E6F2FF → #FFFFFF
```

### Semantic 색상 매핑 (새로운 강조 체계)

```
Primary Accent: oma8 (#BB99FF) - 바이올렛 (활성 상태, 포커스)
Secondary Accent: oma9 (#66CCFF) - 시안 블루 (정보, 링크)
Error/Danger: oma11 (#FF5577) - 네온 레드
Warning: oma13 (#FFDD66) - 골드 옐로우
Success: oma14 (#55FFBB) - 네온 민트
Special: oma15 (#FF77DD) - 핑크 마젠타
```

---

## Configuration Files

_참고: 변수명 접두사가 Nord에서 `oma`로 변경되었습니다._

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

1. **새로운 테마**: "Deep Nebula" - Nord의 낮은 대비를 개선하고, 심우주 느낌의 아주 어두운 배경과 네온 스타일의 강조색을 채택했습니다.
2. **명확한 강조색(Primary Accent)**: 기존 Nord의 모호한 시안색 의존에서 벗어나, 강렬한 **바이올렛(`oma8`)** 을 단일 주요 강조색으로 정의하여 UI의 일관성을 확보했습니다.
3. **고대비와 가독성**: 배경색을 더 어둡게(`oma0`), 텍스트를 더 밝고 선명하게(`oma4`) 조정하여 가독성을 극대화했습니다.
4. **일관된 스타일링**: 모든 컴포넌트에서 활성 상태는 무조건 `oma8`(바이올렛)을 사용하도록 통일했습니다. 윈도우 라운딩을 10px로 약간 늘려 현대적인 느낌을 주었습니다.
5. **팔레트 구조 유지**: 요청하신 대로 기존 16색 구조를 엄격히 유지하면서 색상 값과 역할을 재정의했습니다.
