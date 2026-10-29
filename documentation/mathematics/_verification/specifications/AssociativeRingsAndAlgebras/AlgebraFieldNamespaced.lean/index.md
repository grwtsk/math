# Verification target: Algebra Field Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5258b0f8149140205b0bf2d05cf36bb323fc5819",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant7f3bc28570fb29afa76605870a4448a687966e6898538d27298cf8414e1a653f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5258b0f8149140205b0bf2d05cf36bb323fc5819`.

Source path: `GRWTSK/Algebra/Field/Variant7f3bc28570fb29afa76605870a4448a687966e6898538d27298cf8414e1a653f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant7f3bc28570fb29afa76605870a4448a687966e6898538d27298cf8414e1a653f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_inj](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/declarations/coe-inj.md) | 30 | `result-track:ccadd3c9d5e7fa494b6c353a177840eada2d3360479941de528f7f1f4c09a5ff` |
| 2 | `theorem` | [lift_map_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/declarations/lift-map-eq-zero-iff.md) | 34 | `result-track:4c1a55742caf3359522c534f6436ae36efb7b93c9d2af7fff09eda2616383520` |
| 3 | `theorem` | [coe_inv](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/declarations/coe-inv.md) | 43 | `result-track:0f749fe1ee6b86534d7837b6c8097acce217fb3c94eb98305571e0373cf74eb7` |
| 4 | `theorem` | [coe_div](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/declarations/coe-div.md) | 47 | `result-track:e11977bf5910bae31cb32a3c6405c9987d518eb83926242554e1ff5ccbad9296` |
| 5 | `theorem` | [coe_zpow](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/declarations/coe-zpow.md) | 51 | `result-track:728270daf9aec775ff1ddd0c68c3398f16eaedaebb908f7e2f139ecd386a35c6` |
| 6 | `theorem` | [coe_ratCast](../../../../AssociativeRingsAndAlgebras/AlgebraFieldNamespaced.lean/declarations/coe-ratcast.md) | 61 | `result-track:8ff83e5fbebcd1d876ba2de7f243e231c02b046f994078ebb2b95d61c74c7e1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76bd4be906243bac86c83267df5c4a3423a314c96f143946648d70fda19db337 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Field/Variant7f3bc28570fb29afa76605870a4448a687966e6898538d27298cf8414e1a653f.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Variant7f3bc28570fb29afa76605870a4448a687966e6898538d27298cf8414e1a653f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
