return {
	{
		"EdenEast/nightfox.nvim",
		opts = {
			palettes = {
				all = {
					-- Backgrounds: 깊이감은 유지하되 너무 칠흑 같지 않게 조정
					bg1 = "#1A1A2E", -- (기존 oma1) 약간 더 밝은 배경을 메인으로 사용

					-- Foregrounds: 기본 텍스트의 눈부심 감소
					fg1 = "#C0CEDE", -- (커스텀) 기존 oma4보다 약간 더 차분하고 회색빛이 도는 쿨 화이트
					fg2 = "#A7ACB9", -- (커스텀) 상태바 텍스트도 조금 더 어둡게
					fg3 = "#3E3E66", -- (기존 oma3) 주석/라인넘버

					-- Base Colors (원본 Deep Nebula 팔레트 유지)
					black = "#1A1A2E", -- oma1
					red = "#FF5577", -- oma11 (Neon Red)
					green = "#55FFBB", -- oma14 (Neon Mint)
					yellow = "#FFDD66", -- oma13 (Gold Yellow)
					blue = "#4488FF", -- oma10 (Deep Blue)
					magenta = "#BB99FF", -- oma8 (Primary Accent)
					cyan = "#66CCFF", -- oma9 (Cyan Blue)
					white = "#DDEEFF", -- oma4
					orange = "#FF9955", -- oma12
					pink = "#FF77DD", -- oma15

					comment = "#3E3E66", -- 주석을 어둡게 하여 눈에 덜 띄게 함
				},
			},
			specs = {
				all = {
					-- [핵심 변경] Syntax 하이라이팅 부드럽게 만들기
					-- 모든 주요 색상에 '.dim'을 붙여 형광기를 뺍니다.
					syntax = {
						keyword = "magenta.dim", -- 강렬한 바이올렛 대신 부드러운 라벤더색
						conditional = "magenta.dim",
						statement = "magenta.dim",

						func = "blue.dim", -- 쨍한 파랑 대신 차분한 파랑

						string = "green.dim", -- 눈 아픈 형광 민트 대신 부드러운 민트

						type = "cyan.dim", -- 부드러운 시안색
						struct = "cyan.dim",

						number = "pink.dim", -- 부드러운 핑크
						const = "pink.dim",
						special = "orange.dim", -- 부드러운 오렌지

						operator = "fg1", -- 연산자는 너무 튀지 않게 기본 텍스트 색상 사용
						comment = "fg3", -- 어두운 주석 색상 적용
					},

					-- 진단(에러, 경고)은 여전히 눈에 띄어야 하므로 dim을 덜 적용하거나 그대로 둡니다.
					diag = {
						error = "red", -- 에러는 중요하니 그대로
						warn = "yellow", -- 경고도 그대로
						info = "cyan.dim", -- 정보는 부드럽게
						hint = "blue.dim", -- 힌트도 부드럽게
						ok = "green.dim",
					},

					-- Git 관련 색상도 약간 부드럽게
					git = {
						add = "green.dim",
						change = "yellow.dim",
						delete = "red.dim",
						conflict = "magenta.dim",
						ignored = "fg3",
					},
				},
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "nightfox",
		},
	},
}
