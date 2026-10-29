# Verification target: Basic Basic Public Format Part

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10bdf6dfd9346e8fa574fa37b229318da30b88de",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant210261890ae25e5b2f23ea8aad5d5ca1e8a1395ef4e9352eb4567a76a9487025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10bdf6dfd9346e8fa574fa37b229318da30b88de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant210261890ae25e5b2f23ea8aad5d5ca1e8a1395ef4e9352eb4567a76a9487025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant210261890ae25e5b2f23ea8aad5d5ca1e8a1395ef4e9352eb4567a76a9487025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FormatPart](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatpart.md) | 33 | `declaration-track:2cdc8c11e1db8709070ba0d36664226803be8ef3a9d2492710c0bacd14b656a5` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/instance.md) | 45 | `declaration-track:38af35a345e8dcbab337aa87ccb00c6fb07f87b8ceef0584cebf1ba0bb30ddaf` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/instance-source-edition-3.md) | 48 | `declaration-track:984ecfcc8a85890b524f3e983cdccccef073a821c9ad63f8e6f6c3aa17048b52` |
| 4 | `abbrev` | [FormatString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatstring.md) | 54 | `declaration-track:594d5a8c894d476409a21273026e125a0aca35f06d259bf81c32106c44cc131f` |
| 5 | `inductive` | [Awareness](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/awareness.md) | 59 | `declaration-track:9185d542d7a585b89a137d19cedec1176370437c1382a08bf79ed82509cba3e6` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:46e875dc9bcfa294c109eadebd09744c1387831ee9d58943a68cf8163c544dc0` |
| 7 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/getd.md) | 70 | `declaration-track:f0102689ed02f9544a66d1fbc4f19d69a43b7f1f2ae4c549466b4c2d991f46e4` |
| 8 | `structure` | [FormatConfig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatconfig.md) | 80 | `declaration-track:1a0d229af760dd968615cbe3162ea1b504a8e204b4404398bf154b1001014df7` |
| 9 | `structure` | [GenericFormat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/genericformat.md) | 98 | `declaration-track:4e59e4c460d98437f6baf5350834238f9d086b235436f11391c1dcba1fc02e4e` |
| 10 | `def` | [parseFormatPart](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseformatpart.md) | 110 | `declaration-track:5dc565b24cd05ccfffc5b108fe6b0f5304efc096a1b60a2cb56de8cf81f052ce` |
| 11 | `def` | [specParser](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/specparser.md) | 117 | `declaration-track:6e6c3567b0ac5325bf53280c834e60395eb1e98f25e216737ef230c26f03b21c` |
| 12 | `def` | [specParse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/specparse.md) | 120 | `declaration-track:2defa494f493132c727eb78f0ebf0ca2567c12358d4f308232685d5cf46efd1c` |
| 13 | `def` | [leftPadAscii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/leftpadascii.md) | 125 | `declaration-track:43a532be61a432b1e00a906cbb950e16aced3ce4256cb536402c68f68fbab934` |
| 14 | `def` | [rightPadAscii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/rightpadascii.md) | 128 | `declaration-track:d86d804f15c6fc645c276e9f3121e66f6cf45abfda89831832a6b728f0a93dda` |
| 15 | `def` | [pad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/pad.md) | 131 | `declaration-track:0a20d0b3c260b6c41b4a9478671c0f5e099fef6f40ca18987396930402bd56b7` |
| 16 | `def` | [rightTruncate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/righttruncate.md) | 140 | `declaration-track:594088b976e30cbc5b160bbddda4d1a0838cdb8d6e37723d619c113c8fb07f45` |
| 17 | `def` | [eraIndex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/eraindex.md) | 149 | `declaration-track:b74c42bf37fe75574e26e0f9b3061099349c4b787ce4e47987a1b6554fc07023` |
| 18 | `def` | [formatMonthLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatmonthlong.md) | 153 | `declaration-track:742193925bd98226abd6bfa5dac81ef702f34a123201049cd02cb9732aa224ea` |
| 19 | `def` | [formatMonthShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatmonthshort.md) | 156 | `declaration-track:ba392107e2fbc9eb55113d54fb8db37d3d013cbe17b7e43f24ba883cad12bfef` |
| 20 | `def` | [formatMonthNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatmonthnarrow.md) | 159 | `declaration-track:f063d26d7f71724b1031757a54f52ccfb8cf4e2681b331d42432841e86397f08` |
| 21 | `def` | [formatWeekdayLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatweekdaylong.md) | 162 | `declaration-track:9c34b8d0b38fe3b9dd0b817f8ccbea340314172e7302f0ba4104bac77012b5d9` |
| 22 | `def` | [formatWeekdayShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatweekdayshort.md) | 165 | `declaration-track:3a2ccf5af58ecfcc003c52dec99195a7aa0405ef838cef10ebaee889e6930794` |
| 23 | `def` | [formatWeekdayNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatweekdaynarrow.md) | 168 | `declaration-track:b89111c1d99329bdc705eaef6a1719cb5554e3eb19702d036c0349e186112904` |
| 24 | `def` | [formatWeekdayTwoLetter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatweekdaytwoletter.md) | 171 | `declaration-track:ef4e707163abf8d8fc547be37ca40795429ae4a48050cfea32479e0ff6350699` |
| 25 | `def` | [formatEraShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formaterashort.md) | 174 | `declaration-track:1f1a274018c1425485a9847259bb10d10b7fda23aa330a4a1c87488ddf385280` |
| 26 | `def` | [formatEraLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formateralong.md) | 177 | `declaration-track:c3c85a968778235455a1d7482a401797e47cdbb9eada970c42cad49736907f8b` |
| 27 | `def` | [formatEraNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formateranarrow.md) | 180 | `declaration-track:adb9181ee8cd5ea01cb832e6c403df76585e1a2989464f43840b46d4723e4321` |
| 28 | `def` | [formatQuarterNumber](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatquarternumber.md) | 183 | `declaration-track:a6816a4f719afcf96942fb36c165903e259bc2e3a91f6e8e1590c1e9427fd3c8` |
| 29 | `def` | [formatQuarterShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatquartershort.md) | 189 | `declaration-track:cf546f6e100b45e6afce7ee6758fd35a48f6d34b8a493f11dd8addbe523862ee` |
| 30 | `def` | [formatQuarterLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatquarterlong.md) | 192 | `declaration-track:b3d95152c3d82773f4a369bd6c4b294c879f91ca39bfd12e826fc529ccb91f5e` |
| 31 | `def` | [formatQuarterNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatquarternarrow.md) | 195 | `declaration-track:bdb9f4d5ad777fc4173e86d7d75ec6b3cf61962645b1918eaac6a105d1e191a0` |
| 32 | `def` | [formatMarkerShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatmarkershort.md) | 198 | `declaration-track:98d5426caf6b8527e445594ed2d7002d0368a55103eb2b8a84771f2e7e4ef19e` |
| 33 | `def` | [formatMarkerLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatmarkerlong.md) | 203 | `declaration-track:026b27d898997f507b3ec18782dfe16c686781dabd56c291364616a0d26fea08` |
| 34 | `def` | [formatMarkerNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatmarkernarrow.md) | 208 | `declaration-track:d08144f7bb809032ac4227287f34f33638810b7d2081fb9a2566b2ab8cbfb0c8` |
| 35 | `def` | [formatDayPeriod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatdayperiod.md) | 213 | `declaration-track:4835e9771692743e1aad4c9009a06d1dd134621495f2c24851a7ce765004b92f` |
| 36 | `def` | [extendedDayPeriodIndex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/extendeddayperiodindex.md) | 220 | `declaration-track:ef744d14e372f6079fdeb758b38f339ce64b7b040408a58d036039609cae4384` |
| 37 | `def` | [formatExtendedDayPeriod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatextendeddayperiod.md) | 228 | `declaration-track:dc1f208e0e76e144c4093cde55b892271f00e42d9250a63e3b8232f433792706` |
| 38 | `def` | [toSigned](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/tosigned.md) | 231 | `declaration-track:08040ab6e4f08c2f502bc7d398698b65855516c801d2168c14f0cdeca191cdbe` |
| 39 | `inductive` | [Reason](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/reason.md) | 234 | `declaration-track:b038c7d0009fd99e92f6b3beb20cf7749ce21d3b25dffdc7dee548d8f4dbc547` |
| 40 | `def` | [toIsoString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/toisostring.md) | 240 | `declaration-track:727fe037d3100469ce911767f570a77bc6869ae4ccfdb69536e1c4aa25917f23` |
| 41 | `def` | [classifyDayPeriod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/classifydayperiod.md) | 263 | `declaration-track:fdb504d718c12f22d877eff622b14ba1ef143b53932635e9de65b802412504e6` |
| 42 | `def` | [classifyExtendedDayPeriod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/classifyextendeddayperiod.md) | 270 | `declaration-track:b3ec7c093426d8c8baa54cb17a75eea77febaea0c0f64123a5cf08b8eb0926a8` |
| 43 | `def` | [TypeFormat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/typeformat.md) | 281 | `declaration-track:6d133be17f6f30020577344412e2e9db8621e28958d807bd63319279e6956a2e` |
| 44 | `def` | [formatWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatwith.md) | 319 | `declaration-track:6470d7f814929e18d9c1062f9abe60376cbd5616293efa88e40ef42c158a7549` |
| 45 | `def` | [dateFromModifier](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/datefrommodifier.md) | 487 | `declaration-track:d80fd8740b44764f836a2b83a2c5c483ae00264f7cbf7968de26f50b10ad4b6e` |
| 46 | `def` | [parseFromSymbols](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsefromsymbols.md) | 547 | `declaration-track:b96294d267b63d7d4eebe49dca1d721c159426bb4a292ec72c627f364a5e2deb` |
| 47 | `def` | [monthPairs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/monthpairs.md) | 550 | `declaration-track:caf6817fc4a3242fbd5bd67baff04f6eb0e246f5cc2cd732ec7adf11306f569d` |
| 48 | `def` | [weekdayOfIndex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/weekdayofindex.md) | 553 | `declaration-track:1fd84f3b51d3a251050878d8545d42149b17a4dda0d06d7775454e764aebe397` |
| 49 | `def` | [weekdayPairs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/weekdaypairs.md) | 562 | `declaration-track:b292c3cb966029faa7522447113b982d376e1123080b4ff455fa773fadd9e0ed` |
| 50 | `def` | [eraOfIndex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/eraofindex.md) | 565 | `declaration-track:eb23474b295560fdbfb9d42ecf3510a65c0665c32aaacc89e6675c5ffed0af2c` |
| 51 | `def` | [eraPairs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/erapairs.md) | 569 | `declaration-track:99454715c8d80c972a05722abc0acd73694ce41f72821572b22da2642282f8c9` |
| 52 | `def` | [quarterPairs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/quarterpairs.md) | 572 | `declaration-track:f81eadb66eb8c6075a10722647161842016a633cc49c95b2fcec58424727e254` |
| 53 | `def` | [parseMonthLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsemonthlong.md) | 575 | `declaration-track:721e2a34a70cdf2d4a477a49338e13cebe939bcb8801ee31af096352393af044` |
| 54 | `def` | [parseMonthShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsemonthshort.md) | 581 | `declaration-track:898cfe0c78fbd63863f40471a53f0f774665a5c2f01062b4ef64f501b78896ff` |
| 55 | `def` | [parseMonthNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsemonthnarrow.md) | 584 | `declaration-track:fbbc267b42dabb93e5d7ba0c975c4c639c04382d9f9e2ffd7120dacd246dcc3a` |
| 56 | `def` | [parseWeekdayLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseweekdaylong.md) | 587 | `declaration-track:3284049246849ad37f669f469c3ba70ea7089d3169352b0a73c187b5c1bdc43c` |
| 57 | `def` | [parseWeekdayShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseweekdayshort.md) | 590 | `declaration-track:d183e328a24de6aade0990b07ccdcbecb336f71a5b308f09314eecff1277a457` |
| 58 | `def` | [parseWeekdayNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseweekdaynarrow.md) | 593 | `declaration-track:aa91b64d7683751b735136f885ad094eebb2e99a400232b05b64937f40fa6013` |
| 59 | `def` | [parseWeekdayTwoLetter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseweekdaytwoletter.md) | 596 | `declaration-track:4b9117a1484f134373530f03b9bc4cf5afc8dc13c5a0902f25e6e9039d11d557` |
| 60 | `def` | [parseEraShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseerashort.md) | 599 | `declaration-track:2a3935daff2b0d74388d89d3c7b421f4a7710688a1bf840a66dfff613b88dbd8` |
| 61 | `def` | [parseEraLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseeralong.md) | 602 | `declaration-track:0efe4aa1e7dc89434077eae039d2e571f0b1db9233f6a4fa1afbc346b6b542de` |
| 62 | `def` | [parseEraNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseeranarrow.md) | 605 | `declaration-track:34a4b36c993b9a555670a6d3f5e881b2046550f023faf306d0139f193099ded3` |
| 63 | `def` | [parseQuarterNumber](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsequarternumber.md) | 608 | `declaration-track:87f0efd627750cdaacc2a991aa1d572507f88eeb76bd9e835c3f8c95579cf70b` |
| 64 | `def` | [parseQuarterLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsequarterlong.md) | 614 | `declaration-track:d7e57f3d1704049efda36cf67a22e49500c46fb9cd5c6fa2f4c9a5bb24a988f0` |
| 65 | `def` | [parseQuarterShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsequartershort.md) | 617 | `declaration-track:22dfdf0dc1056e4a9fd1e28e1de7f6198e5b15b60d3b4282f961411ae7dd62c2` |
| 66 | `def` | [parseQuarterNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsequarternarrow.md) | 620 | `declaration-track:633ca57a626b8b29c07630579898ec8cc955ac89d7e5ddbfbcec15c705650be1` |
| 67 | `def` | [parseMarkerShort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsemarkershort.md) | 623 | `declaration-track:3d4068853afc76547dfd6c01d7b6338988f6b1dceea695f94cf4832ced864cf7` |
| 68 | `def` | [parseMarkerLong](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsemarkerlong.md) | 626 | `declaration-track:da8c8db88f6df6a62e2ea2a78f5d9286b512097d2ab3b3969e853e50623adc92` |
| 69 | `def` | [parseMarkerNarrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsemarkernarrow.md) | 629 | `declaration-track:750a1f7e9f176185500d5d2d812a5c8973d453204f00a73b4dccf9d8b60fe682` |
| 70 | `def` | [parseDayPeriodFrom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsedayperiodfrom.md) | 632 | `declaration-track:f17e9d54bba01a10e080ca0acc425b3e6cb6202f8192f222e2cd25c7e3b51877` |
| 71 | `def` | [parseExtendedDayPeriodFrom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseextendeddayperiodfrom.md) | 638 | `declaration-track:77b26f7436528f49d0afee8fb3a0876b6128eeb6ad35837a22beab0e81ed4867` |
| 72 | `def` | [exactly](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/exactly.md) | 645 | `declaration-track:40facca40d20f981560440c3d73e2a3fb5939e3cd7e6f75bc93667d5caca15fe` |
| 73 | `def` | [exactlyChars](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/exactlychars.md) | 656 | `declaration-track:81c34aef0617cb19fc79d34a865fd62e408dc729b7bd7ebf00b530b6a95addd0` |
| 74 | `def` | [parseSigned](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsesigned.md) | 667 | `declaration-track:4bdb77c36ce5617de801db85fbebb90976d4d2daadca5cf4f578cc0a0ba6444d` |
| 75 | `def` | [parseNum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsenum.md) | 672 | `declaration-track:814ab7870b4dabe698091f4bd05636dd31744ca7d9888627aa639c70c278b37e` |
| 76 | `def` | [parseAtLeastNum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseatleastnum.md) | 675 | `declaration-track:be57d7dabb5dd6036bce866ed16e0da9b56597f7ed88fd289b09e6a2a67075a1` |
| 77 | `def` | [parseFlexibleNum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseflexiblenum.md) | 681 | `declaration-track:a75c639f155a5b9268ee7b69e9e93c13d94c7971a50d33133d43b20a0b63aa2f` |
| 78 | `def` | [parseFractionNum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsefractionnum.md) | 684 | `declaration-track:08f130e9cf36a1fc3967643e1aead84f8b258bf896ed76926fbaf37b418c59b5` |
| 79 | `def` | [parseIdentifier](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseidentifier.md) | 687 | `declaration-track:6b54f3b30682e53b25480f0f453111d4085d13116775c18e12b2837e21d88aba` |
| 80 | `def` | [parseNatToBounded](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsenattobounded.md) | 690 | `declaration-track:c073b5bc102e731b0ea46d19e392a8c5207b366aa5baa3067c73ba84efff683e` |
| 81 | `def` | [parseOneOrTwoNum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseoneortwonum.md) | 697 | `declaration-track:532e8b0d82cefd5f5eec4adc067d39c78710e7c89fd73d81a6da50e8fc37a500` |
| 82 | `def` | [parseOffset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parseoffset.md) | 703 | `declaration-track:779dd90bedff5e5ec470cacec5ba0625bc730b4cf202161c91ff1b3e6bd6b99b` |
| 83 | `def` | [parseWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsewith.md) | 734 | `declaration-track:e5ce72d0fe155824f0425cb8e2a22558dc6b10a052d6e9caf0347ed5b6622dc7` |
| 84 | `def` | [formatPartWithDate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatpartwithdate.md) | 873 | `declaration-track:d85d25f4177e9de2314f6a71975d91cd478020d67b38cc0e300ca5c3f2d13ad3` |
| 85 | `def` | [FormatType](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formattype.md) | 880 | `declaration-track:41e4a92d3f9408ffe609486a54534935d22122b814db38fa96c93c5faaa05e6d` |
| 86 | `structure` | [DateBuilder](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/datebuilder.md) | 887 | `declaration-track:953ca0171fe353136fde7e4a934f53f3afbe3293d578a24b9bc648a50c1c320f` |
| 87 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/insert.md) | 928 | `declaration-track:05e38f42dda909deb90112fa7d89f0d512e1ea35f7d7c0eab64ad8af74e70a82` |
| 88 | `def` | [convertYearAndEra](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/convertyearandera.md) | 971 | `declaration-track:239f3b05b5ca6723633e13e2d76c9377ab3352ba2cd051aad09ba608db6cc43b` |
| 89 | `def` | [markerOfDayPeriod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/markerofdayperiod.md) | 976 | `declaration-track:523502e754aaaaa15c7feaf014b488e2a587903ef6437cdf73ca9d49ce6f9472` |
| 90 | `def` | [markerOfExtendedDayPeriod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/markerofextendeddayperiod.md) | 981 | `declaration-track:33f45bc7f0b046ef91130432d3f7a15a540c2e36d54696f5c6d90a68cb1bb870` |
| 91 | `def` | [build](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/build.md) | 985 | `declaration-track:6bb282fec006eb0192a3c494a4aa779ac2a4a297c0fd5a0df989cb85b1aefe6b` |
| 92 | `def` | [parseWithDate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsewithdate.md) | 1050 | `declaration-track:0917ed93aa28cd8af37dfd3a291fff7fc18f22e2eaf42d4d46b2e092409c3b1a` |
| 93 | `def` | [spec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/spec.md) | 1061 | `declaration-track:1248edc67f1f4b5413edaf4cbacbc2fd59a8b4426136ae05db031799db46d956` |
| 94 | `def` | [spec!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/spec-source-edition-2.md) | 1068 | `declaration-track:7c6ad43b336a56d36df0c62409ab2cdf0be441fe21c3d22108cbb92d917c6b78` |
| 95 | `def` | [format](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/format.md) | 1076 | `declaration-track:a42d6815d38e48a4ce674d2e0247f4b559d62bd514cad16affd4f4b30d5c913f` |
| 96 | `def` | [parser](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parser.md) | 1086 | `declaration-track:046bddbcbf22e2801ed5f4ae5bf51187a942eadef30f06127ec0422d91472b18` |
| 97 | `def` | [builderParser](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/builderparser.md) | 1099 | `declaration-track:22ccaefd92f5758518dcd0af2fc824d19b080d3276bf114a6e7a6537cea6fafb` |
| 98 | `def` | [parse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parse-source-edition-2.md) | 1115 | `declaration-track:90b5590d5886448009ee18aa72d81c0bb33a02f06583c8354349b63b2d8e2924` |
| 99 | `def` | [parse!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parse.md) | 1121 | `declaration-track:693190198a59ec59823bb3da657539aaab2c80ca52e217306df57bab80ea1c6b` |
| 100 | `def` | [parseBuilder](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsebuilder-source-edition-2.md) | 1129 | `declaration-track:cdfe56d94308a40dfec62426163a6057e84fae5adfa847bfb4f2df41b98c1c98` |
| 101 | `def` | [parseBuilder!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/parsebuilder.md) | 1135 | `declaration-track:120dd1e61ab84f1b38660791f3ffd6f346b4a8c06ebc77302e8b56946c8918ba` |
| 102 | `def` | [formatGeneric](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatgeneric.md) | 1143 | `declaration-track:12ba3a14cc3455a42eb607a50c1ee5932d0190f831017941a91ed2194a82297a` |
| 103 | `def` | [formatBuilder](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/formatbuilder.md) | 1154 | `declaration-track:68b86cc297ba73cc8480b1cb0089c60d82212a7aee3afbada4e8fc51fba87e64` |
| 104 | `class` | [Format](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/format-source-edition-2.md) | 1167 | `declaration-track:c1410b875bac792f2cb4a338dc3f32351722fccda431ca2766c462b3dd0feb85` |
| 105 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFormatPart.lean/declarations/instance-source-edition-4.md) | 1178 | `declaration-track:db2b01eb208ac3c3b6b82aef864b7b74671d2cfbf6606d62cfa216ca2afd2148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6194133784c85aabb48ee9aa48c110e4796c0996097958c0276d8cc5e08971f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant210261890ae25e5b2f23ea8aad5d5ca1e8a1395ef4e9352eb4567a76a9487025.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant210261890ae25e5b2f23ea8aad5d5ca1e8a1395ef4e9352eb4567a76a9487025.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
