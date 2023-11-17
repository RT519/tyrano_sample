*start

[title name="絶対に負けられない戦い。"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

「絶対に負けられない戦い。」[l][r]

じゃんけんで買ったほうが負けたほうにジュースをおごることになった。[l][r]

今月はお金が無いので絶対に負けられない[l][r]

「準備はいい？」[l][r]

もちろんと答える。[l][r]

「じゃんけん...」[l][r]

*janken

[link target=*tag_tyoki] → チョキを出す。[endlink][r]
[link target=*tag_paa] → パーを出す。[endlink][r]
[link target=*tag_guu] → グーを出す。[endlink][r]
[s]

*tag_tyoki

[cm][l]

[iscript]
tf.random = Math.floor(Math.random()*3)
[endscript]

[elsif exp="tf.random=0"]

相手は「グー」を出した。[l][r]

[jump target=*lose]

[elsif exp="tf.random=1"]

相手は「チョキ」を出した。[l][r]

[jump target=*tie]

[elsif exp="tf.random=2"]

相手は「パー」を出した。[l][r]

[jump target=*win]

*tag_paa

[cm][l]

[iscript]
tf.random = Math.floor(Math.random()*3)
[endscript]

[elsif exp="tf.random=0"]

相手は「グー」を出した。[l][r]

[jump target=*win]

[elsif exp="tf.random=1"]

相手は「チョキ」を出した。[l][r]

[jump target=*lose]

[elsif exp="tf.random=2"]

相手は「パー」を出した。[l][r]

[jump target=*tie]

*tag_guu

[cm][l]

[iscript]
tf.random = Math.floor(Math.random()*3)
[endscript]


[elsif exp="tf.random=0"]

相手は「グー」を出した。[l][r]

[jump target=*tie]

[elsif exp="tf.random=1"]

相手は「チョキ」を出した。[l][r]

[jump target=*win]

[elsif exp="tf.random=2"]

相手は「パー」を出した。[l][r]

[jump target=*lose]

*tag_win

[cm]
じゃんけんに勝った。[l][r]
おごってもらったコーラはとてもおいしかった。[l][r]

【 GOOD END 】[l][cm]

[jump target=*start]

*tag_lose

[cm]
じゃんけんに負けた。[l][r]
ただのコーラではなく高い、健康どうのこうのなコーラをおごらされた。[l][r]
しばらくじゃんけんはしないと心に誓った。[l][cm]

【 BAD END 】[l][cm]

[jump target=*start]

*tag_tie

[cm]
あいこだ。[l][r]
あいこで…[l][cm]

[jump target=*janken]


