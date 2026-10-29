# Verification target: With One Defs Namespaced Rec One Coe One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f59ee8d051bf32cbe34899c340745fca78bf81e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta499ed123a1ab0cc713d7a5a6d1a94cb85e711350db87d9a48c27baac2aed8e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f59ee8d051bf32cbe34899c340745fca78bf81e`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianta499ed123a1ab0cc713d7a5a6d1a94cb85e711350db87d9a48c27baac2aed8e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianta499ed123a1ab0cc713d7a5a6d1a94cb85e711350db87d9a48c27baac2aed8e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithOne](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/withone.md) | 45 | `declaration-track:88976c547cdc0ac313a20c6d5fda8dcb4a4f5c7eb95edfdc91aa2f79ff8dc073` |
| 2 | `instance` | [WithZero.instRepr](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/withzero-instrepr.md) | 48 | `declaration-track:9412f9f5d31ab06079c817f6963f7170ccb5e83c09202c8f6152c293cf283da6` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instance.md) | 57 | `declaration-track:fed06e3081f77509ea126654c08f5fe45fe63db90f66d358a42cae9e08f8722a` |
| 4 | `instance` | [instMonad](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instmonad.md) | 64 | `declaration-track:474ee76a84e8fc9c340460bd75023a7d31638b406534f9c197b8d45c58f1c003` |
| 5 | `instance` | [instOne](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instone.md) | 68 | `declaration-track:edd38d5afe5c1dcc03a1fe542f276eed423590763f4f4499969c20529b9253c4` |
| 6 | `instance` | [instMul](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instmul.md) | 72 | `declaration-track:53a1867fa7ecd22a06f5b7aa917db6aa26ee5c6a4cf1c1b3d3f8091cea493499` |
| 7 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instinv.md) | 76 | `declaration-track:b9885713758ed90420b94108b4df7b621d3541c1bb734b0ae319705794f9a710` |
| 8 | `instance` | [instInvOneClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instinvoneclass.md) | 80 | `declaration-track:6bc969943ed43cf9119abf7b0e58c31c888aa558b02a97b64dca8daf8601c734` |
| 9 | `instance` | [inhabited](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/inhabited.md) | 84 | `declaration-track:dc287693185c044c0561e504b30faac973b0ff484d70d9bbf9dc2989ad51dda7` |
| 10 | `instance` | [instNontrivial](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instnontrivial.md) | 88 | `declaration-track:e4622e56cfb85c595d31cc8785195440becc4c6584a7f7f0fcfab029480a4363` |
| 11 | `def` | [coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/coe.md) | 93 | `declaration-track:8fad4883add8a33a000c1fa324a77720c6d96ff9e99fc24394edb769a43c958d` |
| 12 | `instance` | [instCoeTC](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instcoetc.md) | 97 | `declaration-track:365a7e2c611bf1e25e66f0df05bc61095533875dcf757b04675cae8c5142b9b9` |
| 13 | `def` | [With One Defs Namespaced Rec One Coe One](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/reczerocoe.md) | 102 | `declaration-track:1b95ee544d9fd80c4f0526747c41396b63f0aee1a3ec8d95018591de7af126e1` |
| 14 | `def` | [recOneCoe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/reconecoe.md) | 109 | `declaration-track:7c12d5a7e69b28a634c0a2363717d4da1fbd4c94adf528758a3b8f4de29fda2f` |
| 15 | `lemma` | [recOneCoe_one](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/reconecoe-one.md) | 115 | `result-track:0b9d2f2f3a18fd89d3a0c836d8f22b619ebc346f46c1a1325fcc8a9426210cc9` |
| 16 | `lemma` | [recOneCoe_coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/reconecoe-coe.md) | 120 | `result-track:8593fa8ed6ca4190d9d9d041697bc3473d6d2cc1d535df64e359833fced6c2be` |
| 17 | `def` | [unone](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/unone.md) | 127 | `declaration-track:531c0febe3c35995be5cc901c8a21b9f925f27bdd559cc1e38ea727dba42c274` |
| 18 | `theorem` | [unone_coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/unone-coe.md) | 130 | `result-track:5bf9328e9ec8992a1f00bdb5499c8492f82f3f507a58f4681690193acedf3d63` |
| 19 | `lemma` | [coe_unone](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/coe-unone.md) | 134 | `result-track:4749b51653161175b07d70a75c0bbb2801d130032f000430cacd380371b075f4` |
| 20 | `theorem` | [coe_ne_one](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/coe-ne-one.md) | 138 | `result-track:d3cb2941caacf22e5c0703cde40d7a89963a1034796410509e9918dd143050be` |
| 21 | `theorem` | [one_ne_coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/one-ne-coe.md) | 142 | `result-track:4718c91d6d8e2ab7f0f1ac32f20ec4b5926f2b330cc0771b4806eb09d69a44ee` |
| 22 | `theorem` | [ne_one_iff_exists](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/ne-one-iff-exists.md) | 146 | `result-track:29a9c427ed5f9985e62bc1bd77b00cd6dda72db575e829c1c268e33f88fbe434` |
| 23 | `instance` | [instCanLift](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instcanlift.md) | 150 | `declaration-track:24e787e20acb47c54765e746d7bfeef997925a922412b0dde2dfefbecc70e035` |
| 24 | `theorem` | [coe_inj](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/coe-inj.md) | 154 | `result-track:b36ea930c449091cc213092165ea41adf1998ae121f5f44ceaeeae418ddf5c6a` |
| 25 | `theorem` | [cases_on](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/cases-on.md) | 158 | `result-track:eb5a2b8d8c646a3e446c3c44ea3977ced731ba09d44e36c4de8e35c55e0e1b92` |
| 26 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instmuloneclass.md) | 162 | `declaration-track:f188047e8b7eaa1ad786e3c5dd747bc9e73b59f6fc953ff33ca0d7245dc2e70f` |
| 27 | `lemma` | [coe_mul](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/coe-mul.md) | 169 | `result-track:28401b51595658c6f0de0c4dc3d1c9ec40be8f43d94eb8c7a949f32509d8369a` |
| 28 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instmonoid.md) | 172 | `declaration-track:072b6407e0f12c929a6342e68498b3ad558cdec555c01140612364c1d49d4425` |
| 29 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/instcommmonoid.md) | 181 | `declaration-track:0d2bb815d144c4a72eae34be2c49b5475674d52c268a6aa8ef8370c25784fcfc` |
| 30 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedRecOneCoeOne.lean/declarations/coe-inv.md) | 189 | `result-track:926a1cab84f0d8319d72bee3a496ebe5d3bf6029265a0c23823ca34ee188d6de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acd00e348642bb63f739c00c2b52bf983fc5450463869c1eaf72c46738b1ea7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Varianta499ed123a1ab0cc713d7a5a6d1a94cb85e711350db87d9a48c27baac2aed8e7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Varianta499ed123a1ab0cc713d7a5a6d1a94cb85e711350db87d9a48c27baac2aed8e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
