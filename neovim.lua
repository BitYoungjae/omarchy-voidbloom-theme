return {
	{
		"EdenEast/nightfox.nvim",
		opts = {
			palettes = {
				all = {
					-- Backgrounds: 깊이감 있는 남색 배경과 UI 구분을 위한 계층
					bg1 = "#1A1A2E", -- 메인 에디터 배경
					bg2 = "#24243D", -- 커서 라인, 선택 영역 등 살짝 밝은 배경
					bg3 = "#30304D", -- Pmenu, 플로팅 창 등 구분되는 배경

					-- Foregrounds: 가독성 위계에 따른 텍스트 밝기 조정
					fg1 = "#C0CEDE", -- 메인 코드: 차분하고 시원한 쿨 화이트
					fg2 = "#B3B8C5", -- 보조 텍스트: 상태바, 연산자 등
					fg3 = "#686A94", -- 주석/메타 정보: 배경과 확실히 구분되는 뮤트 라벤더 그레이

					-- Base Colors: Deep Nebula 팔레트
					black = "#1A1A2E",
					red = "#FF5577", -- Neon Red
					green = "#55FFBB", -- Neon Mint
					yellow = "#FFDD66", -- Gold Yellow
					blue = "#4488FF", -- Deep Blue
					magenta = "#BB99FF", -- Primary Accent
					cyan = "#66CCFF", -- Cyan Blue
					white = "#DDEEFF",
					orange = "#FF9955",
					pink = "#FF77DD",

					-- 의미론적 색상 매핑
					comment = "#686A94", -- 가독성이 확보된 주석 색상
				},
			},
			specs = {
				all = {
					-- Syntax: 형광기를 빼고 부드러운 파스텔 톤으로 눈의 피로 최소화
					syntax = {
						keyword = "magenta.dim", -- 부드러운 라벤더
						conditional = "magenta.dim",
						statement = "magenta.dim",

						func = "blue.dim", -- 차분한 파랑
						string = "green.dim", -- 부드러운 민트

						type = "cyan.dim", -- 부드러운 시안
						struct = "cyan.dim",

						number = "pink.dim", -- 부드러운 핑크
						const = "pink.dim",
						special = "orange.dim", -- 부드러운 오렌지

						operator = "fg2", -- 연산자는 코드보다 살짝 뒤로 물러나게
						comment = "fg3", -- 배경에 묻히지 않고 명확히 보이는 주석
						bracket = "fg2", -- 괄호 가독성 조정
					},

					-- Diagnostics: 중요도에 따른 시인성 유지
					diag = {
						error = "red", -- 에러는 즉시 인지 가능하게
						warn = "yellow",
						info = "cyan.dim",
						hint = "blue.dim",
						ok = "green.dim",
					},

					-- Git: 상태 변화를 부드럽게 인지
					git = {
						add = "green.dim",
						change = "yellow.dim",
						delete = "red.dim",
						conflict = "magenta.dim",
						ignored = "fg3", -- 무시된 파일도 식별 가능하도록 설정
					},

					-- UI Elements: 검색 및 선택 영역 가시성 확보
					search = { bg = "yellow", fg = "black" },
					selection = { bg = "bg3" },
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
