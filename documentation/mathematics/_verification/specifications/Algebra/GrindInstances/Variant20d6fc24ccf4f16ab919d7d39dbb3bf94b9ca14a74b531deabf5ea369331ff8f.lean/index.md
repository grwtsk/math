# Verification target: GRWTSK.Algebra.GrindInstances.Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fb6609c53904c214ef539c56f8341e4a9e41ab1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/index.md) · [Full source](../../../../../Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fb6609c53904c214ef539c56f8341e4a9e41ab1`.

Source path: `GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [CommRing.toGrindCommRing](../../../../../Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/declarations/commring-togrindcommring--22e7385aab3e11e897be1087.md) | 25 | `declaration-track:22e7385aab3e11e897be1087d60600b2296382f9abb928c1ab9db21bca80dbb2` |
| 2 | `theorem` | [CommRing.toGrindCommRing_ofNat](../../../../../Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/declarations/commring-togrindcommring-ofnat--790b4cd6cb3070e81714e29b.md) | 56 | `result-track:790b4cd6cb3070e81714e29b1d0b1439c96ccad0599a9c47b5f1d3ce98c7e7ea` |
| 3 | `example` | [(anonymous)](../../../../../Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/declarations/example--51bc74da35bb879c2e85b046.md) | 67 | `declaration-track:51bc74da35bb879c2e85b046edce601d026cdf2562a1018d934dad05f74fc587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2106c17526f89ba288bbdede0bd3aacf8f047273ce71d1aff39f80e31d8aa588 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean","GRWTSK/_verification/specifications/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
