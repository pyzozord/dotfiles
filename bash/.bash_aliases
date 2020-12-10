alias termbin="nc termbin.com 9999"

function toptal {
	/home/michal/Projects/toptal/tester.js ${@:-"."};
}

function browserstack {
	BrowserStackLocal --key ql0b9njk0sSFBVI3evZo
}

function notes {
	vip ~/Documents/notes.txt
}

prompts=('😈' '🚀' '🏆' '🧀' '🌍' '☕️' '🍦' '🍰' '🍿' '🦆' '🐵' '🤖' '💀' '🤘' '😬' '😳' '👻' '🤓' '😅' '🍻' '😎' '🔥' '🙈' '✨' '⭐️' '🍕' '🍏' '💎' '💰' '💡' '🎲' '😇' '🎃' '😱' '😡' '😵' '🎁' '💊' '🔫' '🎉' '🏀')

function scout() {
	for F in ${@-./*}; do echo "$(find $F | wc -l) $F"; done | sort -r
}

function tree() {
	find ${@-./*} | sed -E 's:/?[^/]+/: :g'
}

mood() {
	PS1="${prompts[$((RANDOM % ${#prompts[*]}))]} "
}

whatthecommit() {
	text=$(curl -fs --max-time 0.3 http://whatthecommit.com/index.txt)
	printf "\n$text\n"
}


confirm() { 
	read -p "${1:-Are you sure?} " resp; [[ $resp = y* ]] 
}

# "pretty json"
pj() {
	node -e "
		process.stdin.setEncoding('utf8');
		let s = '';
		process.stdin.on('readable', () => {
			while ((chunk = process.stdin.read()) !== null) 
				s += chunk;
		});

		process.stdin.on('end', () => {
			const data = JSON.parse(s);
			console.dir(${1:-data});
		});
	";
}

vpn() {
	openvpn3 session-start --config ~/Documents/client.ovpn
}

#(whatthecommit &)
mood
pwd

alias grip="grep -rinC5"
alias gp="git pull";
alias gc="git commit";
alias gca="git commit --amend";
alias ga="git add";
alias gaa="git add .";
alias gm="git merge";
alias gr="git reset";
alias gco="git checkout";
gq() { git checkout @{${1:--1}}; };
alias gb="git branch";
alias gba="git branch -a";
alias gps="git push";
alias gpsu="git push -u origin HEAD";
alias gpsf="git push -f";
alias gs="git status";
alias gd="git diff";
alias gdc="git diff --cached";
alias gds="git diff --compact-summary";
alias gl="git log --graph";
alias gtfo="confirm && gaa && gca --no-edit && gpsf";
alias gf="git fetch"
alias gfa="git fetch --all"
alias gbl="git blame"
