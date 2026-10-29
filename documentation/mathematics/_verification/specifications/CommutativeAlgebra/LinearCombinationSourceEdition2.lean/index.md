# Verification target: Linear Combination Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5671cc2597639c6ecf94b7e9d444121cc6dafb8d",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5671cc2597639c6ecf94b7e9d444121cc6dafb8d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/test-sorry.md) | 10 | `declaration-track:49681731ae592cad506237331d2a4e7876cda72206223ee2bbf02bccbe573b71` |
| 2 | `axiom` | [Real](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/real.md) | 13 | `declaration-track:fd94050143660cd797c195024f327ffaf1a4abbfa52120d521bcd29d6fd507e1` |
| 3 | `axiom` | [Real.field](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/real-field.md) | 15 | `declaration-track:fc519d5d0f4561d867fe2a74f2510282caa2f6be0e70751a8f40b2f5978934f1` |
| 4 | `axiom` | [Real.linearOrder](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/real-linearorder.md) | 16 | `declaration-track:8524353c62a5cb2b481884b08bb98fb131b2e661344a0a547cd87c33b3c51174` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/real-isstrictorderedring.md) | 17 | `declaration-track:2aecbaf7e72e7f313890d0b8ce30e187eeae695c39e9efdfa042702335b8f626` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-35.md) | 21 | `declaration-track:53ab6a81de6ea6dd5b6b57b8790aef9d7edf433f99d84ae438504c2259ead571` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-73.md) | 24 | `declaration-track:a562f9f4614e4beb9cbaf3f97a1ccf0b86767efda0b252027cd3eac9bb899361` |
| 8 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-23.md) | 27 | `declaration-track:32a749cdec899273734ad300be2f4c9ae5dccd12df95dcb1060373f88beb52ea` |
| 9 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-11.md) | 30 | `declaration-track:1a0b63e7b1a72ec3ae7bfffac4d53a62ad313c84606ffe09e0d4b3d8c87b6d88` |
| 10 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-103.md) | 33 | `declaration-track:ff7f375fe148e7f2accf05ffcfc9ee3e39d630dc1d293c94324dbbf2e4caf318` |
| 11 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-42.md) | 36 | `declaration-track:649c1f4aa8c257d274b4c855aab5ae65c7629f84dd872d1bab8060f4930c30a7` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-29.md) | 39 | `declaration-track:4a736c8b8d1c04e5df6eb06900c0dbef8794277183889df4dd067afd33532a91` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-86.md) | 42 | `declaration-track:cc4b5ed28748befd3880ada3cffbbc1fa437503881e7c47103376584d95b577a` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-94.md) | 45 | `declaration-track:db15032931dc3a974c1ff673e5ced379d8264c681d5bbb40373ac0d688c757c3` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-72.md) | 48 | `declaration-track:a288962e998983ff9bc0c9bed61bf6426a3c801f332d5ffa0bf503845108e1df` |
| 16 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-3.md) | 51 | `declaration-track:08d7eb9dba655f5acaa15e82c86ea6d35c0ed537e4679cead9b2b9da67dfe505` |
| 17 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-5.md) | 56 | `declaration-track:0ded7636aeaf5aabdcaf4d4389b1b00e8dba604f8f13840dfe0eeb0e80487773` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-76.md) | 59 | `declaration-track:a90b782ee129d75afd6876fb3d50207fed15ce23d94b1e92ea92930f027e0c17` |
| 19 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-33.md) | 62 | `declaration-track:52657ca03bad2778779b5bd99d5326fad91147e15fa4a0246e4c6f00d88ea507` |
| 20 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-97.md) | 67 | `declaration-track:ea089286da92d07e1e19ca177310df7165c25bf6f18f7bd71ab7a2f82a55906f` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-68.md) | 70 | `declaration-track:9e7504e93df5d6dbed2a821489be6c09be98f6aa1cfe015fb32dadc61be7f7ac` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-101.md) | 73 | `declaration-track:f52de08ab429f751adfb23927dea14ee29bb2a22c05a2544db444b59cb766743` |
| 23 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-44.md) | 77 | `declaration-track:67537cc5a4201a768722aba440f37df54f6178ae5e850d04cc68f2b021c70e58` |
| 24 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-7.md) | 81 | `declaration-track:10c17c12929e49ac64113aa0254b24a160a7a0e306bb109a12b21f840b422a6c` |
| 25 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-37.md) | 85 | `declaration-track:56ad53d23c24a6117a0f7a4e323c91226c04a0249e1eb93e1ddeffd3ab56f879` |
| 26 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-40.md) | 89 | `declaration-track:5c6a496956a3d8d8ccb91ae635f280f85a1f834fbaa54abaf154e15afae31efa` |
| 27 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-67.md) | 93 | `declaration-track:9990d63f026fe1455fda262a20e4a373b72c22e8118b499052b0de5f2d746b3a` |
| 28 | `axiom` | [qc](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/qc.md) | 99 | `declaration-track:3189d0926bc8a45c1a063431d96e0dae7b4a4fe6014382ae8cda984946fc9822` |
| 29 | `axiom` | [hqc](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/hqc.md) | 100 | `declaration-track:9136029bfea50df43df89fc27cb16ac8ffc6aee995eaa5f5e591784a881d325a` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-66.md) | 102 | `declaration-track:925c69b7b6e06938b774ce423a071d33c8e7d5f72ca8dd2eed734694d45f65f7` |
| 31 | `axiom` | [bad](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/bad.md) | 105 | `declaration-track:afa3b98acd2e7a68ce04d4cc740e84bb9b2d44df243b4b71c49a058f63d60ffb` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-36.md) | 107 | `declaration-track:5594c9b3533c072b88e0e93a4c76b6b3e977c9fa89654f93fc926926bc152f59` |
| 33 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-15.md) | 111 | `declaration-track:28241d3d0c2790fb71dfe68e40c1818b162865b54834cb72e993cbc86f3ff8a3` |
| 34 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-21.md) | 113 | `declaration-track:307d3e85798b71862ef709bd98851fdb96eb127a4cd72987a0f3be5de35c5686` |
| 35 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-75.md) | 115 | `declaration-track:a7b8e90f4992bfaf25273b426501a93745bfacf06956bfe52e99236a60ad5d51` |
| 36 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-77.md) | 118 | `declaration-track:a967e1564b76bf2a0de0c11d878d900403f8d83df26c95bef8277d1ed9b95cce` |
| 37 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-84.md) | 122 | `declaration-track:c6f6d1b3e41d55fab46570e9de185ab847d8db547b55bf7510b364dce86e478c` |
| 38 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-82.md) | 125 | `declaration-track:c1ff7e6a74b63315ec893fc24d0eeb49264a94d793e970423084a3d622d40284` |
| 39 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-31.md) | 128 | `declaration-track:4f0681cb1d9254f326dc03481fb5c9829966ace5ff10a06fbf87ee87abce0f9d` |
| 40 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-27.md) | 138 | `declaration-track:454d2a3780c2f96704d6fcc7eb29221fa4bf1a70f4e9aeb812cd67cd96c17868` |
| 41 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-30.md) | 141 | `declaration-track:4aae674d8124dfc29cfd0cfddf7b64534b92390d2d25aad81c83115949ac4635` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-38.md) | 144 | `declaration-track:58aa76eaa54b6258fb6b7f0ab7e01a0b9c80710b4191a01b740044d9836f49a5` |
| 43 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-59.md) | 147 | `declaration-track:86b9eef6c50090ba2c8a3a1ab8d0e4ce8ad192cca2e3869f8638786250be98da` |
| 44 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-18.md) | 155 | `declaration-track:2d2ba674bb8c44a4b3cb83867d7025916bc51203af4b96ae199b8fa2bc6ee98f` |
| 45 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-13.md) | 163 | `declaration-track:24c75dd076aee2d0a95f9cacae84d66ff2e547cb81e055f8e57e4af64102d58a` |
| 46 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-49.md) | 171 | `declaration-track:6c6bbf19bcacc7144bf5e3dd8a25ecfa64438be02f7a9dfcb583682674491936` |
| 47 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-6.md) | 184 | `declaration-track:0e63ca4d388d04c2de16618b4e41109bc5f362ab7b7dc15efbbc70026b5ab7e8` |
| 48 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example.md) | 187 | `declaration-track:00f394dfba7e13f9ec120dc5d372b9f9445b3c79554f948da2fd7268c5bafd22` |
| 49 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-12.md) | 190 | `declaration-track:1d77c0e35795b5f79df6dbe28f40c69c2b873457775ffa04d9d2348b9beab1a5` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-8.md) | 192 | `declaration-track:148edc52f25468de6c5b1c6f06b9fdb13e33dc7ff5c5ae1193fd37291c47bfe2` |
| 51 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-96.md) | 200 | `declaration-track:e90b1a353c86905e0ae9ab846193371529a88133b32fa247a05df04d696ef6c6` |
| 52 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-26.md) | 210 | `declaration-track:3c7978fceef55a68709f3e17dabce769120d7ad869c0419e51db8aa84a9729c3` |
| 53 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-88.md) | 213 | `declaration-track:d0e557fc88df86909e7629540ab3fb23a97e81b73b09f687b3ec2e204b9a45ec` |
| 54 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-2.md) | 224 | `declaration-track:024f83ae3a02a87b873ffd846b2759c877a39a3b0e4f47535392055442e6ac7d` |
| 55 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-64.md) | 229 | `declaration-track:917bf307e3342ff8e167c0e5d4621576e2bbd51ce6f4b3e4283fd9148d28b6a6` |
| 56 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-60.md) | 232 | `declaration-track:87d371d83a62556af7c12a4cad193c0f6cf9ebc9c1726d2db96538555d546746` |
| 57 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-65.md) | 235 | `declaration-track:9229afe75d303644b2aef476030dd61e1f7c046ab6946aa037ff14e1266428ce` |
| 58 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-79.md) | 238 | `declaration-track:ba7613b02c777cba8ec96462092be388d82902b6260f0f719a3f4797a1f3fc89` |
| 59 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-16.md) | 244 | `declaration-track:2942b2d545988340c82d17b20b380b905277fdabde9a8ac1a3fa4d36282b53ee` |
| 60 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-43.md) | 248 | `declaration-track:6658ae4c132f278bd259e172f108a7d24bbcdfbbe4dcc3bdecdfe96b89b85d25` |
| 61 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-22.md) | 255 | `declaration-track:311de23d669ba6eed636f5c206350424c050a6575b92eb61d8d61501382dcba9` |
| 62 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-52.md) | 258 | `declaration-track:73a5ed1cd1d84ccca919485721f163f9eaf458ad9be9bf86a36865564de016c3` |
| 63 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-91.md) | 261 | `declaration-track:d49066cd30aa38f3f0e230d825fea08f23d7dd7b762d236dc3baedffc5001c61` |
| 64 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-46.md) | 266 | `declaration-track:6a0379285bdd8330c2af2e45bfe99279c0d3ae617336f76bb8c2779156843001` |
| 65 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-25.md) | 271 | `declaration-track:377e5f8e09a3041ffa4bebabbaf2369dad4818e24ae08e398525dc378aa1ad08` |
| 66 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-80.md) | 277 | `declaration-track:bce9719903681ab60498d6847be111e0955b3d20d5d91fc09f71ce2bd29dd2f3` |
| 67 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-99.md) | 284 | `declaration-track:f0e56fb5e70c157797c5dce66041351adcf0b5e70477aaf2843978fd37ff8e3f` |
| 68 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-71.md) | 288 | `declaration-track:a0bc81a5a774b26dda559e311f3e5ab48e2c9cdcaad8140ee20fa67110cc47d7` |
| 69 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-95.md) | 301 | `declaration-track:ddca21fca2a667b9c5eb3ad7460df94f17b7137b2fa48932626d992eb79c9e2b` |
| 70 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-19.md) | 310 | `declaration-track:2d438dc9bb9c1d7129792acf45919c33929d01501a13e191b0f07d618fedf31b` |
| 71 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-54.md) | 327 | `declaration-track:7a2535b701faa58b9c6db8bba34c6c9ea9cace9c801fc777648c9420826600a9` |
| 72 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-24.md) | 331 | `declaration-track:3503f9669db6a4136dc5dfdc27768fb53345ee5385cbf763de75201aafa31b06` |
| 73 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-34.md) | 339 | `declaration-track:53a792283911ecf67070568f4e4c9eb1f25b96c4343ac073245092192b9e8a51` |
| 74 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-41.md) | 346 | `declaration-track:632a29eae93d0d336442dbcaf963d3242a7b744933c3f33a379925267c4256e4` |
| 75 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-78.md) | 350 | `declaration-track:aa581672e4fddb9668472848b2d2db8bd7aabbcf5702d2ab8bcee0b146be4f43` |
| 76 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-87.md) | 354 | `declaration-track:d041664295d33e891c003e1786623f95c7c65366bc0c9a108ccb717a1df6dada` |
| 77 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-69.md) | 358 | `declaration-track:9ebc4a05b1c9d9aec078e49092fd107ae09f9e4049a7bf23fae35f2e8632005a` |
| 78 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-14.md) | 361 | `declaration-track:27512055ad59f5d08e5c3b910246458eb0cc12a4692c5eb09a05cf7d834d6cc0` |
| 79 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-62.md) | 365 | `declaration-track:8c040faf462751ca2ab9fe1e97064ed3f642e72469a000d2439864d52409dc5a` |
| 80 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-81.md) | 379 | `declaration-track:c0d37227f430ee9988bbbae789a91655add6736c4499f250f5e2b033bbf9d4a4` |
| 81 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-70.md) | 381 | `declaration-track:9f75ccb49c33de52b4fc060c428d9ff035732611387380f7cffdb546eed43e81` |
| 82 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-53.md) | 382 | `declaration-track:77bb03a51675f71a28bc8c2729970b7c6e3851af7ceafcfaaa701beb92d6f99c` |
| 83 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-57.md) | 384 | `declaration-track:8177779ad3694b25d2478ec024d25f8f1b2c4793783a1398b7c317b4b27ec723` |
| 84 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-85.md) | 385 | `declaration-track:c82fd755ea58ebbf219ff45dcb26fd552dd6955b0efb55ddb90ce678c359f14f` |
| 85 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-90.md) | 386 | `declaration-track:d24cf5574d4827986c6b57de1f0ad6e1b9d2bb53768d83f1662c0407b57c83f1` |
| 86 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-32.md) | 388 | `declaration-track:500ae2e5356808b6c729c5749f382ca59d5d723c9e9048644dada8e4f49d10b3` |
| 87 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-98.md) | 390 | `declaration-track:ead4f5d8070e29de6a7b28876705475cb7ebb21549e96e6abece7fbd75fd2220` |
| 88 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-50.md) | 391 | `declaration-track:6e3d02b0e9eade196af223464a791669e6191fc114aad95110552f3bf0067544` |
| 89 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-83.md) | 393 | `declaration-track:c43a4619ab67d8372a1a76cf9e639e31b123c2380ae45c46b73983fda4e04942` |
| 90 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-93.md) | 395 | `declaration-track:da90890569e09fc6bd412e14853a0fb6ede9863adf8df0998ede3fdf5a1bcc6c` |
| 91 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-51.md) | 396 | `declaration-track:725a6f1c61954e4e2b6337345fbd53b9b96bfb7adde909e1b9dfd22c5e534df0` |
| 92 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-55.md) | 398 | `declaration-track:7ad748d8ffc049f6cf9729cadcf56af8709500e7cd89cc274c0f001e8ab578c3` |
| 93 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-61.md) | 400 | `declaration-track:8a7be35c9823b63d7875a3318fc662adb18815d152d844b3929ced7a9cde7616` |
| 94 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-56.md) | 405 | `declaration-track:812b0fd1353510a70a36511b238df2d63e18b67e3129f6397cfb6563eff1c700` |
| 95 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-100.md) | 414 | `declaration-track:f4f24ea04b9a63caef859b4ee4206f3197415353fc1d34fef2ad584c1e349b12` |
| 96 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-58.md) | 431 | `declaration-track:842ded02f91355c1993d5746ef14b14c18d17360694cc06e8a50adb64ce7fbb0` |
| 97 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-20.md) | 441 | `declaration-track:2e78979c68a3f8fe4633314c3deed2450c08d04d5061a4491dc725ac870b55f2` |
| 98 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-102.md) | 445 | `declaration-track:fc1d74895c93ded03da4912f56764491ae48a74791385f1f1e169d509f2d12ee` |
| 99 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-92.md) | 449 | `declaration-track:d6aad7ffb8d80fea9e8d893fba0bf1f8055aed52ad29e27b9d782798ac8a1fb7` |
| 100 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-48.md) | 450 | `declaration-track:6c5f25c6b5cd664b4732a1222bf055eeada0a551b44ac7a87d2a5ce960f6bb1f` |
| 101 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-4.md) | 454 | `declaration-track:0cb162e238453d9310326943c99b37b633f717581efef455e8fe1a3f832b5811` |
| 102 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-39.md) | 456 | `declaration-track:5b3f02c7622a509bf6e876b8d85772f088feb6f0230480f3fbd5b8fe4997528e` |
| 103 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-17.md) | 461 | `declaration-track:2b3acb5b2ef86dbda406659cf4587b6c1302b782955db282091e9fcd761d439b` |
| 104 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-45.md) | 463 | `declaration-track:6930cbb0f07d8fa7df425057850378f7a83c99cde99d6787e2fd440b7d4b096a` |
| 105 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-47.md) | 465 | `declaration-track:6a22660c8126dff0e7fe8a7e88c03bffdc40b161adedc4d8a3747570485ecd20` |
| 106 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-28.md) | 467 | `declaration-track:48112e50dbed8109ea303607bef937a40109cd3ed146fa84d515782934d961b8` |
| 107 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-10.md) | 472 | `declaration-track:19e888265a99f606300ff9abee8f5f925e2c6dbc72f84b601cac86ce9c88bfcd` |
| 108 | `def` | [g](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/g.md) | 477 | `declaration-track:9a5954ae92863b2913e198aee4f841a4f46da8c3473bd9faf84942b27c00a2ca` |
| 109 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-63.md) | 479 | `declaration-track:8e1c60f12a1775c651a0a161c790dafb890be6d8a73d64e941ef2c6335323abc` |
| 110 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-74.md) | 483 | `declaration-track:a738cb7eaa604444d65c82f04ab0084bd8fcea79c7c1883ca6e0594675ea4a51` |
| 111 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-89.md) | 490 | `declaration-track:d0eb153bcb585f1229ab9453a726fbbe73e339e95d5922cd0a97d95999bc1cfc` |
| 112 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationSourceEdition2.lean/declarations/example-source-edition-9.md) | 530 | `declaration-track:16a08df90b723bce967d4965f139d0e648077fcf4f644c5b1f0747da20cdf16d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfe68d70997a5b3699e917eb2f1b4971dd822a4f57664b6d674524d4facd5fef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
