# Verification target: Certificates Direct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afbb7db15b02e959b830f440e25ca185f30fc7cf",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afbb7db15b02e959b830f440e25ca185f30fc7cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Population](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/population.md) | 13 | `declaration-track:a9f58ce250ef661b46a2602936fa9bb9c36c30b681e87eb7691e7a3b9a0f53f8` |
| 2 | `def` | [mutate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/mutate.md) | 16 | `declaration-track:7ea045f30a22f0bd781246c219860259225a7d3baa777aafa58b070fb9e99897` |
| 3 | `theorem` | [mutate_other](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/mutate-other.md) | 20 | `result-track:9dc79ce6b930190abf5fdf18ec59813e4afef21f0ccadb4b8bbb8df54ab75993` |
| 4 | `theorem` | [mutate_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/mutate-involutive.md) | 25 | `result-track:027900d47587cfe96b91a55a758bfc555165516d987c5bc275d6cae544f4640b` |
| 5 | `def` | [play](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/play.md) | 44 | `declaration-track:07996abe9f45295bfaff586355c493442dafb9b0731c47ad993d480e557f5436` |
| 6 | `theorem` | [play_nil](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/play-nil.md) | 48 | `result-track:6552017b007f3fd1de161c3ad4be2a89be3de9a95c7a05cdd3ab54ae9a0ea9cd` |
| 7 | `theorem` | [play_cons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/play-cons.md) | 51 | `result-track:79219f9efe6ccb18911c3f05927b0359d8acb7175ec6edf7d97cf207031ad552` |
| 8 | `theorem` | [play_append](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/play-append.md) | 55 | `result-track:70326e6eef4b87a992cce748a71c62d6e89a4ac613c23c4b01131bd8b26dde3f` |
| 9 | `theorem` | [play_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/play-reverse.md) | 61 | `result-track:88990d30f98240f88ce29f9546ef9ca340ddad6660d9898e29507d8a5d7e3f0c` |
| 10 | `def` | [seed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/seed.md) | 71 | `declaration-track:3de4d6896edb62243a24b73f9e9bcf921e5ceee38cd9671d3efa34384cc53f10` |
| 11 | `inductive` | [Reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/reachable.md) | 74 | `declaration-track:f2887df924f6802311a8baa342be66dd42820d3bf3bc37fb31c1746f6ece98b3` |
| 12 | `theorem` | [play_reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/play-reachable.md) | 78 | `result-track:efc498fe456b67f76966b53022b03019193e26749cd5896aec4c4cf7c8e0489f` |
| 13 | `structure` | [Certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/certificate.md) | 86 | `declaration-track:d355efecb1c407dc67e50f4ca8ac9812842c18eabe6e4f9c77c976d4791c961b` |
| 14 | `def` | [Certificate.Valid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/certificate-valid.md) | 94 | `declaration-track:c6cd73f67aa180db21c289213c62f178cb3628d3c1cee2a57826544e51683a26` |
| 15 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/instance.md) | 100 | `declaration-track:711423c0e948bbe4cca192e2ac98c580bacb0e78b502f92a0d846e6b31f422d4` |
| 16 | `def` | [Certificate.check](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/certificate-check.md) | 105 | `declaration-track:ec13d322363401d6891d6ee149aca2c7e60c311fd5fb230356e83c1882a3f662` |
| 17 | `theorem` | [certificate_check_sound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/certificate-check-sound.md) | 107 | `result-track:44261e8340f04598eac771722bb24a515c74b86f458aa998205ab3d9ed9fdb68` |
| 18 | `theorem` | [certificate_cardinality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/certificate-cardinality.md) | 125 | `result-track:3ba5b879df5a068280604fbf10c75c72c3deb52ba8531e960c771d3d7efd4bc8` |
| 19 | `def` | [d4AdjData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4adjdata.md) | 138 | `declaration-track:4b77da89f6458a34d9533443d60d236cb926b9cb06216c54398a987cbb00da06` |
| 20 | `def` | [d4StatesData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4statesdata.md) | 142 | `declaration-track:639bbb3f5bfa21e9a7e38df5a1da8bb26b882788c34c2901b70530322c010b74` |
| 21 | `def` | [d4NextData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4nextdata.md) | 166 | `declaration-track:b074cd79d08446638bd72ad45020862f3fccc81e498448882d2d38e763e09d41` |
| 22 | `def` | [d4WordData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4worddata.md) | 190 | `declaration-track:6245c326f71fcc15c2b7d56a3c3a243fb9c74db8afda255b1aa7c6ebe7b9a3d4` |
| 23 | `def` | [d4OriginData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4origindata.md) | 214 | `declaration-track:11541d616b8b09a141eb36e18e3d345fbc8973b5cb86bde3e58e8630c3f3c123` |
| 24 | `def` | [d4](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4.md) | 216 | `declaration-track:13eacf245488e8b19cd9e14951b143433ff487b17c7fdaa961d1f590a7642d52` |
| 25 | `theorem` | [d4_valid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-valid.md) | 224 | `result-track:e56791514a29a1705210f33d346d5278addc1ca73894935ecc2314ffd0fd2b4b` |
| 26 | `theorem` | [d4_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-checked.md) | 227 | `result-track:2745ae89e87e8752058e83b3b6310c47ed5c58a831ccf60a63e425e5824c29ec` |
| 27 | `theorem` | [d4_orbit_exact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-orbit-exact.md) | 230 | `result-track:b288b73d382678d5ef7b90e5ffcdfd1619d736dcfae3263f042d797927feb5d3` |
| 28 | `theorem` | [d4_orbit_cardinality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-orbit-cardinality.md) | 234 | `result-track:36a7b42984ef330b0e06093dbf313c882a3b5195a16b7cd0802de853d6651501` |
| 29 | `theorem` | [d4_positive_count](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-positive-count.md) | 237 | `result-track:2b6ed690737e62dc9141aa2dda23d9e708d681c2becbe8185e6d8d51c305364c` |
| 30 | `theorem` | [d4_negative_count](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-negative-count.md) | 241 | `result-track:887993a7e3c9327c00a9d3f6ba68e6cb915e2cdc784279e48fffc75ab875b956` |
| 31 | `def` | [d4Cartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4cartan.md) | 245 | `declaration-track:2c43421a179883066a23db9aab615df498a37c7d6ce122cd850cec283118b1d9` |
| 32 | `theorem` | [d4_norm_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/d4-norm-two.md) | 248 | `result-track:0e590f811b339cdbd6eb076b387f54b1b5a5ba68fa55140ffcc9c015aaadcadd` |
| 33 | `def` | [e8AdjData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8adjdata.md) | 252 | `declaration-track:f273c83fac6e0f2e8b55abe2a426540075dfc42fda0f8ad3625a56d61f9838ab` |
| 34 | `def` | [e8StatesData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8statesdata.md) | 260 | `declaration-track:e799210ac48d637f77216df83c9d9c93bb043f97d1082ec5b3682ff2116bb3fb` |
| 35 | `def` | [e8NextData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8nextdata.md) | 500 | `declaration-track:9e6f147f1c263554e69a0609fe10b54b2aa2c2a921099ad8ca7e1b1e8d0c5493` |
| 36 | `def` | [e8WordData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8worddata.md) | 740 | `declaration-track:98e245a42f44366758d410d496c6611e580230fdf69f7183a9f3f8869d2d4e06` |
| 37 | `def` | [e8OriginData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8origindata.md) | 980 | `declaration-track:509da1d21c8d3a59f1dfe257d4aa544b50a78c2f328b32b13b0f94570a50849c` |
| 38 | `def` | [e8](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8.md) | 982 | `declaration-track:7e4601e405218014734118bc91b734e2f1fc83bd03ce4f343a88c4afb924c217` |
| 39 | `theorem` | [e8_valid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-valid.md) | 990 | `result-track:78a3614a94f531bab569b9fc402dc19f2e4e9c4105511c66e13a35540e15cf05` |
| 40 | `theorem` | [e8_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-checked.md) | 993 | `result-track:2d878404385d96d5af180c38be124fb7ddb57525cf4b2deb1ebe4c0275ffb106` |
| 41 | `theorem` | [e8_orbit_exact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-orbit-exact.md) | 996 | `result-track:e519a38478466b2b11a0e5d8304854806b35ce0c973285b675d9381b0ea86a46` |
| 42 | `theorem` | [e8_orbit_cardinality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-orbit-cardinality.md) | 1000 | `result-track:81cfb1cd929c0dafdd566e32ca34becc06f4cb4187c940dd93a457fae993929d` |
| 43 | `theorem` | [e8_positive_count](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-positive-count.md) | 1003 | `result-track:2f161512298153239623add6de8b5e508a821929301a13371005edaef39cb305` |
| 44 | `theorem` | [e8_negative_count](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-negative-count.md) | 1007 | `result-track:8fc4176ca87cbfbfd3d916a64a9a0b2b06444708393cc33f6a9d78bb396ea056` |
| 45 | `def` | [e8Cartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8cartan.md) | 1011 | `declaration-track:d0d3d457390eb904b3b12dde38fc8893ce2e0a150568f5d303d79548a06da9ce` |
| 46 | `theorem` | [e8_norm_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CertificatesDirect.lean/declarations/e8-norm-two.md) | 1014 | `result-track:76dcff121e39616feee93d17a128d2ebc09f78bba97c895580b4a75c8ed856d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1da08ff2afa6afa5d43127702681054bf65db1bc0202b23ad18913a029c09411 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
