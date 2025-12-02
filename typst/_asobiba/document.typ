#import "_functions.typ": * // 共通関数読み込み
#import "_settings.typ": config // 共通設定読み込み

#import "@preview/cetz:0.4.2": * // tikzライクな図形描画
// https://typst.app/universe/package/cetz/

#import "@preview/equate:0.3.2": equate // 数式番号付与
#show: equate.with(breakable: true, sub-numbering: true, number-mode: "label")
#set math.equation(numbering: "(1.a)")
// https://typst.app/universe/package/equate/
#import "@preview/quick-maths:0.2.1": shorthands // 数式記法補助
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($-+$, $minus.plus$),
  ($-||-$, math.tack.l.r),
  ($||-$, math.forces),
  ($||+$, math.forces.not),
  ($|=$, math.tack.r.double),
  ($=|$, math.tack.l.double),
  ($|++$, math.tack.r.double.not),
  ($|-$, math.tack),
  ($-|$, math.tack.l),
  ($|+$, math.tack.not),
  ($=<$, math.lt.eq),
  ($<=$, math.arrow.l.double),
  ($..c$, math.dots.h.c),
  ($.c$, math.dot.op),
  ($..v$, math.dots.v),
  ($..d$, math.dots.down),
  ($..u$, math.dots.up),
  ($~~$, math.approx),
  ($h-$, math.planck),
)
// https://typst.app/universe/package/quick-maths/

#import "@preview/thmbox:0.3.0": * //定理環境
#show: thmbox-init()
// https://typst.app/universe/package/thmbox/
#import "@preview/frame-it:1.2.0": * // フレーム付きボックス
#let (example, feature, variant, syntax) = frames(
  feature: ("Feature",),
  // For each frame kind, you have to provide its supplement title to be displayed
  variant: ("Variant",),
  // You can provide a color or leave it out and it will be generated
  example: ("Example", gray),
  // You can add as many as you want
  syntax: ("Syntax",),
)
// This is necessary. Don't forget this!
#show: frame-style(styles.boxy)
// https://typst.app/universe/package/frame-it/
#import "@preview/gentle-clues:1.2.0": * //info が書きやすい
// https://typst.app/universe/package/gentle-clues/

#import "@preview/commute:0.3.0": arr, commutative-diagram, node // 可換図式
// https://typst.app/universe/package/commute/
#import "@preview/curryst:0.6.0": prooftree, rule, rule-set // 自然演繹記法
// https://typst.app/universe/package/curryst/

#import "@preview/unify:0.7.1": num, numrange, qty, qtyrange // si記法
// https://typst.app/universe/package/unify/
#import "@preview/physica:0.9.7": * // 物理記法
// https://github.com/Leedehai/typst-physics/blob/master/physica-manual.pdf
#import "@preview/quill:0.7.2": * // 量子ビット記法
// https://typst.app/universe/package/quill/

#import "@preview/alchemist:0.1.8": * // 有機化学構造式
// https://typst.app/universe/package/alchemist/
#import "@preview/drafting:0.2.2": * // commentを付けたりできる
// https://typst.app/universe/package/drafting/
#import "@preview/codly:1.3.0": * // ソースコード表示
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
// https://typst.app/universe/package/codly/
#import "@preview/tiaoma:0.3.0": * //バーコード生成
// https://typst.app/universe/package/tiaoma/
#import "@preview/lilaq:0.5.0" as lq //表作成補助
// https://lilaq.org/
#import "@preview/finite:0.5.0": automaton // 有限オートマトン
// https://github.com/jneug/typst-finite
#import "@preview/cjk-spacer:0.1.0": cjk-spacer // 日本語の単語間スペース調整
// https://typst.app/universe/package/cjk-spacer/
#show: cjk-spacer

#show: config.with(
  maintitle: "title here",
  //  subtitle: "subtitle",
  author: ("eyemask57",),
  //  author-en:(),
  //  date: none,
  //  date: datetime(year: 2026, month: 1, day: 1),
  //  language: "en",
  //  page-numbering: false,
  //  first-page-numbering: false,
  //  l-header: ["koko"],
  //  r-header: ["soko"],
  /*  l-header: context{
        let headings = query(
          heading.where(level: 1).before(here()),
        )
        if headings.len() > 0 {
          let current = headings.last()
          emph(current.body)
        }
    },
  */
  /*  r-header: context{
        let headings = query(
          heading.where(level: 2).before(here()),
        )
        if headings.len() > 0 {
          let current = headings.last()
          emph(current.body)
        }
    },
  */
  //  first-page-header: false,
  //  keywords: ("",),
  //  discription: [],
  title-stile: 2,
)

It's just a template.

これはテンプレートです。

#outline(title: "目次", depth: 2, indent: auto)

= 作例

こんな感じで一文字空いたりします．
あああああああああああああああ$A A A A$ああ
*あああああああああ*ああああああああああああ

こう見ればわかるかな？
改行して書いてもそんなに変わりません．
ただ続いていくだけです．@zfc

$
  ZFC |+ Con ( ZFC ) \
  ZFC := ZF + AC #<zfc>
$

// add an info clue
#info[ This is the info clue ... ]

// or a tip with custom title
#tip(title: "Best tip ever")[Check out this cool package#footnote[nankakore]]

$rot (grad f), tensor(T, -mu, +nu), pdv(f, x, y, [1,2]) , h- hbar planck$

$
  "clk:" & signals("|1....|0....|1....|0....|1....|0....|1....|0..", step: #0.5em) \
  "bus:" & signals(" #.... X=... ..... ..... X=... ..... ..... X#.", step: #0.5em)
$

$ num("-1.32865+-0.50273e-6") $
$ qty("1.3+1.2-0.3e3", "erg/cm^2/s", space: "#h(2mm)") $
$ numrange("1,1238e-2", "3,0868e5", thousandsep: "'") $
$ qtyrange("1e3", "2e3", "meter per second squared", per: "/", delimiter: "\"to\"") $

#canvas({
  import draw: *

  ortho(y: -30deg, x: 30deg, {
    on-xz({
      grid(
        (0, -2),
        (8, 2),
        stroke: gray + .5pt,
      )
    })

    // Draw a sine wave on the xy plane
    let wave(amplitude: 1, fill: none, phases: 2, scale: 8, samples: 100) = {
      line(
        ..(
          for x in range(0, samples + 1) {
            let x = x / samples
            let p = (2 * phases * calc.pi) * x
            ((x * scale, calc.sin(p) * amplitude),)
          }
        ),
        fill: fill,
      )

      let subdivs = 8
      for phase in range(0, phases) {
        let x = phase / phases
        for div in range(1, subdivs + 1) {
          let p = 2 * calc.pi * (div / subdivs)
          let y = calc.sin(p) * amplitude
          let x = x * scale + div / subdivs * scale / phases
          line((x, 0), (x, y), stroke: rgb(0, 0, 0, 150) + .5pt)
        }
      }
    }

    on-xy({
      wave(amplitude: 1.6, fill: rgb(0, 0, 255, 50))
    })
    on-xz({
      wave(amplitude: 1, fill: rgb(255, 0, 0, 50))
    })
  })
})

#let ax = rule.with(name: [ax])
#let and-el = rule.with(name: $and_e^ell$)
#let and-er = rule.with(name: $and_e^r$)
#let impl-i = rule.with(name: $scripts(->)_i$)
#let impl-e = rule.with(name: $scripts(->)_e$)
#let not-i = rule.with(name: $not_i$)
#let not-e = rule.with(name: $not_e$)

#let variable = prooftree(rule(
  name: [Variable],
  $Gamma, x : A tack x : A$,
))
#let abstraction = prooftree(rule(
  name: [Abstraction],
  $Gamma, x: A tack P : B$,
  $Gamma tack lambda x . P : A => B$,
))

#let application = prooftree(rule(
  name: [Application],
  $Gamma tack P : A => B$,
  $Delta tack Q : B$,
  $Gamma, Delta tack P Q : B$,
))

#let weakening = prooftree(rule(
  name: [Weakening],
  $Gamma tack P : B$,
  $Gamma, x : A tack P : B$,
))

#let contraction = prooftree(rule(
  label: [Contraction],
  $Gamma, x : A, y : A tack P : B$,
  $Gamma, z : A tack P[x, y <- z]: B$,
))

#let exchange = prooftree(rule(
  label: [Exchange],
  $Gamma, x : A, y: B, Delta tack P : B$,
  $Gamma, y : B, x: A, Delta tack P : B$,
))

#align(center, rule-set(
  variable,
  abstraction,
  application,
  weakening,
  contraction,
  exchange,
))

#ean("1234567890128")



これなら何も問題が無いよね？

#isbnx("9784627157217")
#ean("1923042072004")\

フォントは游明朝，アルファベットは Times New Roman を採用．
太字は *游ゴシック* と *Arial* を採用．

*国際基準に則るなり～*

にゃーん

テンプレートにしては重すぎるから改良を検討中．

#include "inc.typ"

楽しいね，Typst.

