# Verification target: Gen Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8276eb618ffbf598066b782e0350524d72e5b1fa",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8276eb618ffbf598066b782e0350524d72e5b1fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/generror.md) | 34 | `declaration-track:52439ca2fc8eb31c37cbb9448693ec698b1cc5da4da50b314a0819e086c0f9cc` |
| 2 | `def` | [Gen.genericFailure](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/gen-genericfailure.md) | 38 | `declaration-track:a341f37bb06c5712b6efaa6690d02a8a95157d3797874326c933a2d648cf5a61` |
| 3 | `instance` | [instPartialOrderExceptGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/instpartialorderexceptgenerror.md) | 51 | `declaration-track:51cc6edc17271d74087def31020a0acdd0d7dbdb0ada7a1a522f5026460ac76b` |
| 4 | `instance` | [instCCPOExceptGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/instccpoexceptgenerror.md) | 54 | `declaration-track:66528091daaac83fb1d3c931909ef89fd28c7782a4e6e65fbda3998661668d5e` |
| 5 | `instance` | [instMonoBindExceptGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/instmonobindexceptgenerror.md) | 57 | `declaration-track:d90512b717092cca6ed3eecf5bc809cbb92fb210377ea56f0123a8f3a542531c` |
| 6 | `abbrev` | [Gen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/gen.md) | 71 | `declaration-track:8e8b9838e05e13beec37a1c04423f53b329b5adbff88275980687366899419e3` |
| 7 | `instance` | [instMonadLiftGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/instmonadliftgen.md) | 73 | `declaration-track:aa0fb9300c8af3c2597f017b8a06c6eca78668a7ddf9c8013dfd7fa5bc1a778a` |
| 8 | `instance` | [instMonadErrorGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/instmonaderrorgen.md) | 76 | `declaration-track:3aa14c39ea8a7c82e1a9f4f61691aefaac10b4d9e5985dd3aa0cdb3585b04478` |
| 9 | `def` | [Gen.genFailure](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/gen-genfailure.md) | 78 | `declaration-track:817f3964135c115079b2a9f1fb5eb916b89563e995cf82a06d0b00e4e9537b8b` |
| 10 | `def` | [up](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/up.md) | 85 | `declaration-track:e4346f276ae350d70d19407a05201887e38eb243085f7a5b6ec9a55ee4a77537` |
| 11 | `def` | [down](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/down.md) | 94 | `declaration-track:a65afdb83f71b6798af376c78c9bbca9441aec4cd0e2040af3d18ae568d1f47c` |
| 12 | `def` | [chooseAny](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/chooseany.md) | 101 | `declaration-track:51cd1fc46a6bcf63699b354d8288466937d10e6294d842a6b6abccf80eb7b217` |
| 13 | `def` | [choose](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/choose.md) | 105 | `declaration-track:a9c8f363b947f8dd27b2e32c3d0f2af690da5482dff4ada54bb761b7ec2c84e5` |
| 14 | `def` | [chooseNatLt](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/choosenatlt.md) | 111 | `declaration-track:e2c2d3223febfca8c1e11c834ac6be24738bc5948dbb9e0b00a4463cda18dd73` |
| 15 | `def` | [getSize](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/getsize.md) | 116 | `declaration-track:e26a6a613952f27bd95bbe04f0204c66412e8f5766af4ed77e23fe4e7bc30468` |
| 16 | `def` | [resize](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/resize.md) | 120 | `declaration-track:822851a0c4fd20ae9832ddacdfa5e06bd8d9fac3739aef8cb106b168f0d69c55` |
| 17 | `def` | [chooseNat](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/choosenat.md) | 126 | `declaration-track:758db53f0d873d4a6f5b2216ed993ff32e96c80353db47a983ce7f6aca7e6eea` |
| 18 | `def` | [outOfFuel](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/outoffuel.md) | 141 | `declaration-track:f4a2dd64d3b26b958d1883b154308ca7471b21e1882b718d14228d029bc94d4f` |
| 19 | `def` | [pick](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/pick.md) | 146 | `declaration-track:790d1dc48b6109f9f4a2075e9f14081a669aafd74cb29b71dc63130ba0f2a365` |
| 20 | `instance` | [inhabitedGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/inhabitedgen.md) | 155 | `declaration-track:1c2dc83f5e1148689ddc95486793ba6e407830c0434a2a5b891076d3e9077283` |
| 21 | `def` | [pickDrop](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/pickdrop.md) | 159 | `declaration-track:0eec913d41a34be6ee86068024d638d15fdf7f3e533bb1c581f2455ff8ee10b0` |
| 22 | `def` | [sumFst](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/sumfst.md) | 170 | `declaration-track:76f24bf8afe7a7b175dca71b2e7bf95fca457dd344fe290437eb1e35f05eb82d` |
| 23 | `def` | [backtrackFuel](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/backtrackfuel.md) | 173 | `declaration-track:f16972fe6dbee0280d705fef690f05013eb0347d1029394df552ffe2931ba901` |
| 24 | `def` | [backtrack](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/backtrack.md) | 186 | `declaration-track:b7c6c3a2c77ca24a4658c879f1afe7c70bbc1db128c00353ea11271b14289c55` |
| 25 | `def` | [oneOfWithDefault](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/oneofwithdefault.md) | 194 | `declaration-track:c66026e28de8ae00dc22a16fb8515e1c65b082eec9c21a51759eb95a8529b85a` |
| 26 | `def` | [frequency](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/frequency.md) | 203 | `declaration-track:cc85d3311b6ca413e37f05f8cedae231c042e6b169548d23606042f06be3dc9d` |
| 27 | `def` | [sized](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/sized.md) | 209 | `declaration-track:ffa3cefb2e8807d6ca7b9c4a877c6fd9d1f5ebafde5f01d3519fe513201af859` |
| 28 | `def` | [arrayOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/arrayof.md) | 216 | `declaration-track:384dc8c3e083345fe176d24426bf723f6685cdab245149f700bb3d4de5f15cc9` |
| 29 | `def` | [listOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/listof.md) | 225 | `declaration-track:e2faed1c8b109413ac4d69dda06987de4583d3def3ee855713a1f22a4f6c74d0` |
| 30 | `def` | [oneOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/oneof.md) | 229 | `declaration-track:4fb7cf9fb80bf81e1e25831c8bb81c16d158ca1dbd92ce08767c00d36d378b29` |
| 31 | `def` | [elements](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/elements.md) | 234 | `declaration-track:63390db71e72e754ac6a6db50a2c4987a760e8bc99d870c63a1803717bc1a418` |
| 32 | `def` | [permutationOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/permutationof.md) | 241 | `declaration-track:d08f188866fda1fb7d6606fb468561e76571757ba8a02b944433e21b203168ec` |
| 33 | `def` | [prodOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/prodof.md) | 249 | `declaration-track:583918a80801817febec082b7b5c118092cfb257fa8eb25911dd31091c0c3afe` |
| 34 | `def` | [errorOfGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/errorofgenerror.md) | 256 | `declaration-track:dabb08842ee01a417c8593ea8e0230ef7862f3ac864fc7180ff78f61f5b8b9d2` |
| 35 | `instance` | [instMonadLiftStateIOGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/instmonadliftstateiogen.md) | 262 | `declaration-track:ce966049148eeb3cfdb5403f6b51762f7759bd8173bb17dbddbf764e0b92936e` |
| 36 | `def` | [Gen.run](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/gen-run.md) | 266 | `declaration-track:85ae19de25d360bdcee545cf0a2898cbe50f60d1401c9424eda2235a938849b8` |
| 37 | `def` | [Gen.printSamples](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/gen-printsamples.md) | 273 | `declaration-track:987bdcb84c3a5e204b7e4f17c3db49763d79b1852fb3e5f6ca3172ecb260112c` |
| 38 | `def` | [Gen.runUntil](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/gen-rununtil.md) | 284 | `declaration-track:240dc3aa33d5ac2265dd9fc2981a03d848e3c22ec84f04db441b357a2b93836d` |
| 39 | `def` | [test](../../../../../ComputerScience/AlgorithmsInComputerScience/GenPublic.lean/declarations/test.md) | 299 | `declaration-track:29f5ee6e89b68cda194ab94ed45cd5c43eeeedea2908f8cff946c57a473ebd60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bc0b37e8ec236dff03b68b67bafbe0d3cac4c5244fce1d7a967a3d137d31cdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant6b8a4951159be7db66630252c2dd277e88dadf70ff5c9db259c8e77570ccd19e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
