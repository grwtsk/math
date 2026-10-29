# Verification target: Ring Theory Ring F

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "730630ab906c61adb790fae5b98758c22b1bc054",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant8993575d8959afa80721ba32e1d45c508a70dcc8288aacf41528d087ace0bede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryRingF.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryRingF.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `730630ab906c61adb790fae5b98758c22b1bc054`.

Source path: `GRWTSK/Algebra/Ring/Variant8993575d8959afa80721ba32e1d45c508a70dcc8288aacf41528d087ace0bede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant8993575d8959afa80721ba32e1d45c508a70dcc8288aacf41528d087ace0bede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [Real](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/real.md) | 7 | `declaration-track:71999160cb06889003b1b58f400eb6367c68c914bdd52df92200574c5e6ddf9a` |
| 2 | `axiom` | [Real.linearOrderedRing](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/real-linearorderedring.md) | 9 | `declaration-track:3c3ccc6c6520a55b8968002fc9aa9d2cd220e0022b97d350c2cd461e8ecd5521` |
| 3 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-26.md) | 11 | `declaration-track:7684bd48c52d1d47cc4a63e0914db966fe6c6b9158d629d8f6213f19d48f51c3` |
| 4 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-20.md) | 12 | `declaration-track:5d686070d399643a17882a3811504bb6adad2689580b2b4ed775831a0fb991f9` |
| 5 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-39.md) | 13 | `declaration-track:b3c2076a1201c4b2db84738577ed0e8b6995977c088dcb95a095d767301dd133` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-14.md) | 14 | `declaration-track:439a71468620add709f03be7023b94766ef73d03901b36940b3443f6013e4298` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-43.md) | 15 | `declaration-track:c80fb2a5c49a58a73ce48db502b519868b654eca86413a6bf5e591620fafefcc` |
| 8 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-21.md) | 17 | `declaration-track:5e8f1e07ad88be09af6b06c73bac9e22be8e227d7d887fcb6995d77f955e02dc` |
| 9 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-34.md) | 18 | `declaration-track:8ffc0750de35dbeab52a1833fe6da3e52370a1c2fd4405a53b8b3b3c94775ae0` |
| 10 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-52.md) | 19 | `declaration-track:fac03b0bce5839e380db5073713408d3e7f624a832434301059416999fe3a401` |
| 11 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-35.md) | 20 | `declaration-track:970bec714e1bb1db92997a1e6e64a56fb39b3293da334e3401d10a6d89d13603` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-2.md) | 21 | `declaration-track:1028fb8aba0ba38baec25ff70847fe39f6fcad1a63380c7d31ec333ddf84774e` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-44.md) | 22 | `declaration-track:ccc2d5e83fe5aa42f7b54607c53ce1a5913fd6635006a14e67dc75b0b2b2d691` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-13.md) | 24 | `declaration-track:3c05e7d204dd3a1b8d1624661e08df7da0cd37ca188e05a1c6cbe86d591e7022` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-46.md) | 26 | `declaration-track:d9713293de61480981d5176d8653df27b1494fd9f2c8f82a2d10c281d519544f` |
| 16 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-8.md) | 27 | `declaration-track:2960a6faa7162bc29cde16f381f142c29a06b5d2885dacc90c881b8b41fd50b5` |
| 17 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-6.md) | 28 | `declaration-track:1fe243f01ddd793c2d6dcce8ab5ab106420d1b8b16b88a21cdf4742b732ae2ce` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-51.md) | 30 | `declaration-track:f2fc8766e0275e02fdf29ccfc673de0b25742297973daf4c50e5deb779238337` |
| 19 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-50.md) | 32 | `declaration-track:ede579bb3df9fe9d2607f4db477ae12403f0ce73dd54dde2e404414698474599` |
| 20 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-11.md) | 34 | `declaration-track:3a092d29747aeacea5527b88f0f00d188f4ef36d39340cd8ecbe0dd7d832d0cb` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-3.md) | 38 | `declaration-track:1748f6f522555306c619b4c6ef58c37d3ceddb9557109002cc61595eab9f537a` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-47.md) | 40 | `declaration-track:dfee94ee5b2136cb48121f5beca565f580eaaddfd33dbcd198741dcd6a5983fc` |
| 23 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example.md) | 46 | `declaration-track:038277b9815d0b2cd63cd904efa848d127de972594a5da0856ec19e8bf1df03d` |
| 24 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-28.md) | 47 | `declaration-track:7bb07609108a345388b9064b1b0f0f13a38f8e750b5f91d8ec77a36ed92bdadb` |
| 25 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-9.md) | 48 | `declaration-track:2d26a238df92778d98c353e9e27ccbf324732c178df97ed0c4e0a6790b6fb86a` |
| 26 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-23.md) | 49 | `declaration-track:64671edfd59e3e6205e8ec8b5eb95ddf0e8d4422097878771e39b502d59f2067` |
| 27 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-53.md) | 50 | `declaration-track:fe753439ff5253141ad362a160381408f70ca745eadb37d4ab5226ef23879f02` |
| 28 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-48.md) | 51 | `declaration-track:e67f426ee6fd0c9a5ec621e14b011c95bf0a4084becb072ff62a002ccdd781cc` |
| 29 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-25.md) | 53 | `declaration-track:719da12abe3ff7a688135ad56eb9830913f517da438afa1206320a1c0c72b9dc` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-40.md) | 54 | `declaration-track:b3ff70d4cf1aa7ca181ded0d1a969c843825fc849869cfff3e1e8961bfc5f2e9` |
| 31 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-45.md) | 55 | `declaration-track:d2ae946bebf963f4a1fdcbc561716a0d2ff63d8db0e2c925ff1e806373f0b1a1` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-29.md) | 59 | `declaration-track:7daafabfbae95e1c18aca5bdbc90557cadd5aa9ef1a5333f38561f28289be11f` |
| 33 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-42.md) | 60 | `declaration-track:babc5693950185aaee5137fb8be1722afbb8f6a241f637f6b241c45845d50b20` |
| 34 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-38.md) | 64 | `declaration-track:ac2ef8884570ab9b9be1df24e20d90cfe3e11d65e1a360d14b3fbb523e08cd8a` |
| 35 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-32.md) | 66 | `declaration-track:890dc5fa18b79de2f4683fe33407e2b8edb9682737d877d6e1b46791bd0b08a2` |
| 36 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-36.md) | 71 | `declaration-track:9d59b727261b8fea1c57a5208cfb64dfee31b36d1e040160f47483428e13ebe0` |
| 37 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-4.md) | 76 | `declaration-track:192edef75998b73f7549d52b79a14f9f6ea9277e84fde1c2308202ae8f585f88` |
| 38 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-33.md) | 78 | `declaration-track:8e2941a2bb57427f4de3f0837b1accee8c8056e27fa98282f29139d8b14a1599` |
| 39 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-22.md) | 85 | `declaration-track:607bc60c940a26a18197f9c4c3ecdd6d4aacb3813fb12967f6f983306e9be8ca` |
| 40 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-49.md) | 90 | `declaration-track:e6a04ebeda593d211fe0dc623ba53850fa8f3781dbba48bff19a0acc0f32a427` |
| 41 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-16.md) | 92 | `declaration-track:52f8363946f1da588139d5961be0fe8e461bfb98cf48fcfad30d834743874bf3` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-19.md) | 95 | `declaration-track:5b4f55116cd54a5b6ebf0d359fe7162a9ae2fd3e6872ec50072257ea2a9c4130` |
| 43 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-15.md) | 96 | `declaration-track:506442a2b412e35d45b9edfbc3d7007b354b3b54bdd56e6da8414da30bf2d08a` |
| 44 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-10.md) | 97 | `declaration-track:34be1423dc27e3f3de8736d50e3e3b9fb0869cf4e0a6044a2029349673075e0f` |
| 45 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-17.md) | 100 | `declaration-track:532d12e77b2368dd0c189f2f740700594f5f465e7adfc0d6ea1d714911f193fb` |
| 46 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-5.md) | 105 | `declaration-track:1aec0992463bdf44c2f6a2554f2979352010f445b5191768c542b426f2c598f7` |
| 47 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-24.md) | 110 | `declaration-track:692a56eff32a1183968c8212636c841709c012303864314a0beb6a6088c75331` |
| 48 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-30.md) | 115 | `declaration-track:8269926d2012cb13769e0632939d02908e0d78f628e5a2ef31c798f8d8c99580` |
| 49 | `def` | [f](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/f.md) | 121 | `declaration-track:f52b73c3f31d6e710c141ff7f4ce7153a0d22ac7934e5dd0a14c1bbe4d200938` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-18.md) | 123 | `declaration-track:53a514ec7b8e96349e2912b56303041ef26049de2ab89557397021459c607bd2` |
| 51 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-41.md) | 129 | `declaration-track:b9124d0a4a9911979b7393807868d7ef4f1e4064e3dbb49759ea2e88b71f14fd` |
| 52 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-7.md) | 134 | `declaration-track:20109f2144b48a0b59caf78dcd098315009b34220c8768d8d118d0afff143b8b` |
| 53 | `def` | [R](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/r.md) | 137 | `declaration-track:df15c58e1fdc77840f1c8afb5cdf4c72616f4e8e7e706d9df22c7e78db753494` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/instance.md) | 138 | `declaration-track:e71aa2a026566a914f5632c0da7e981aed3b2a91ee67754a0e320916adcd27a3` |
| 55 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-37.md) | 140 | `declaration-track:9f5eb15ed8a689469de604d060854246e9f63d6cacefeac1eb5d4e22f10b4215` |
| 56 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-31.md) | 142 | `declaration-track:8415e2a6979ded2a5e692d6438ea18b0e0ecd3d8b20fc3d0c9c02a7577ea6719` |
| 57 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-12.md) | 146 | `declaration-track:3a6d50303b1f6ab2145e0500cd60c4633f15814a8bcab8726254b53c2965728d` |
| 58 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryRingF.lean/declarations/example-source-edition-27.md) | 148 | `declaration-track:77b859174e170f92c9bbad700ad1cac6c379c21670a275feed1d28053ab63562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8d849ca49c97191081aa69ef25e3401976e7fbf0a0bc32a39840b88f18f0617 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variant8993575d8959afa80721ba32e1d45c508a70dcc8288aacf41528d087ace0bede.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Variant8993575d8959afa80721ba32e1d45c508a70dcc8288aacf41528d087ace0bede.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
