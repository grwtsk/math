# Verification target: Int Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2682e53ec3e2e56fde3b5164bbef0315d9f594be",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2682e53ec3e2e56fde3b5164bbef0315d9f594be`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instcommmonoid.md) | 24 | `declaration-track:f83e1c2af3e72fec5c430fc8d7e27f540d2afc29656966ad7d8ec8dfcd5a13ce` |
| 2 | `instance` | [instAddCommGroup](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instaddcommgroup.md) | 33 | `declaration-track:727d912de6fd284b38a1ed4d5806c2655fc999e467819f27f4264c97a662bcdc` |
| 3 | `instance` | [instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instaddcommmonoid.md) | 58 | `declaration-track:09028098b96324156dbf22efe568a57c9c7a8052c25ae46569abc4775b1bb246` |
| 4 | `instance` | [instAddMonoid](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instaddmonoid.md) | 59 | `declaration-track:d7a48f17ca636a1a4b9a1ee211773f73866d7604f03804a026750d6a6f4779b6` |
| 5 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instmonoid.md) | 60 | `declaration-track:fd72b1a34c630cc140172fd6a1d2a936af3df2ada09927b2304f68b3fe3fe073` |
| 6 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instcommsemigroup.md) | 61 | `declaration-track:0f1684fb989d042abe5c0eeaac54eb2a3073ba6f6b3271e2d0eb5efe291a39de` |
| 7 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instsemigroup.md) | 62 | `declaration-track:e62ecc7e48cb47b468aaac37c6b39de724fa4f12dd5cb65c55569757dee5cafd` |
| 8 | `instance` | [instAddGroup](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instaddgroup.md) | 63 | `declaration-track:26a78573804e1ce3335996edf6923a8bdc2493e9c163205796f82f40b7f17ca3` |
| 9 | `instance` | [instAddCommSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instaddcommsemigroup.md) | 64 | `declaration-track:4ddba753487d212a4a07adc6c50bcc8ae6385b817cc82d2886e32a06b14c075d` |
| 10 | `instance` | [instAddSemigroup](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/instaddsemigroup.md) | 65 | `declaration-track:5b367ad411a57282dcd6e6e13ef85549c8db0618bf835718bffda3330d8dcb1d` |
| 11 | `lemma` | [zsmul_int_int](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/zsmul-int-int.md) | 70 | `result-track:c8794837be38eb4350c472b4e407fc4bc9b672dae8bf2e7dab05adeb0d9b0b4d` |
| 12 | `lemma` | [zsmul_int_one](../../../../GroupTheoryAndGeneralizations/IntDefs.lean/declarations/zsmul-int-one.md) | 72 | `result-track:4877ee355997adc6666e6718bfb261f7db5140fdb985035b210ee4cdc229b30b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b465118ab847fd0038870747fe9ea34ab2b945e0bec3a227c7de06c939064f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
