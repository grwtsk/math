# Verification target: GRWTSK.Algebra.KTheory.UnboundedKasparovCycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d831fd7d9f423f7b6b2f5584ef71e0768de03f1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/UnboundedKasparovCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/index.md) · [Full source](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d831fd7d9f423f7b6b2f5584ef71e0768de03f1`.

Source path: `GRWTSK/Algebra/KTheory/UnboundedKasparovCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/UnboundedKasparovCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Compact.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Operator.UnboundedPortAnalytic`](../../../../../Analysis/OperatorTheory/UnboundedPortAnalytic.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsComplexSymmetric](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/iscomplexsymmetric--f4e5200df2fa5273ebcbc238.md) | 19 | `declaration-track:f4e5200df2fa5273ebcbc238a8270bf438e848fd6e5fc2b48e22ab86388937fd` |
| 2 | `def` | [shifted](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/shifted--96e87015535d6d45935835c0.md) | 24 | `declaration-track:96e87015535d6d45935835c084da639f1205af96353c7d72e951bd41b2b7b5c9` |
| 3 | `theorem` | [shifted_apply](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/shifted-apply--5a24ec16265a6f0fde658f3a.md) | 28 | `result-track:5a24ec16265a6f0fde658f3a6f0f08214655a36f66f789c0b7ed07b045dca9e8` |
| 4 | `structure` | [CompactResolventWitness](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/compactresolventwitness--a803faa3182450d09ae65056.md) | 37 | `declaration-track:a803faa3182450d09ae650568ca2b4cfb56149ede5ae6aa918f826bd774b17e4` |
| 5 | `def` | [domainMap](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/domainmap--ccf2717c426f8289c2af44be.md) | 51 | `declaration-track:ccf2717c426f8289c2af44bece94996cb94f567c28f1701b0532e14155d6964e` |
| 6 | `theorem` | [coe_domainMap](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/coe-domainmap--cdd342391ba40ec11adeb5ab.md) | 61 | `result-track:cdd342391ba40ec11adeb5abe981875d28c685c2ecf81873f7bcf3a5f69fa9bf` |
| 7 | `theorem` | [shifted_domainMap](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/shifted-domainmap--eef2cfe0e41dc92ae8be9342.md) | 66 | `result-track:eef2cfe0e41dc92ae8be9342eeb79c3c796cf5a88d98bada8131dcf287787268` |
| 8 | `theorem` | [domainMap_shifted](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/domainmap-shifted--301a600ce67631e1109421a2.md) | 71 | `result-track:301a600ce67631e1109421a2983ac08796730b28dc127d00931dafcb42fa05ab` |
| 9 | `theorem` | [shifted_bijective](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/shifted-bijective--d7c2d73a3d83819626c610f4.md) | 77 | `result-track:d7c2d73a3d83819626c610f47dfedcc2bd682701478ea0fdea2bfa3004ad1898` |
| 10 | `theorem` | [inverse_apply_unique](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/inverse-apply-unique--156d1d02500ae689d7cd522d.md) | 89 | `result-track:156d1d02500ae689d7cd522d7b0c3a7844236988e016aebb65e74a2decc6c47e` |
| 11 | `structure` | [Cycle](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/cycle--17f3f40be6e1f2d34efc8f2f.md) | 107 | `declaration-track:17f3f40be6e1f2d34efc8f2f9f2ffcbbdc1e81f6989c458bcbed48f45f2f90fb` |
| 12 | `theorem` | [commutator_apply](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/commutator-apply--255e61213aea4e47459fe943.md) | 129 | `result-track:255e61213aea4e47459fe9432430ec98f7891789a1ee65e6e3a5dc7e482dd98a` |
| 13 | `theorem` | [resolventShift_bijective](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/resolventshift-bijective--da9b4a47fe48e54c9fcfd435.md) | 136 | `result-track:da9b4a47fe48e54c9fcfd4354451065c9730fa164268719d092bb968650f32f5` |
| 14 | `theorem` | [resolvent_compact](../../../../../Algebra/KTheory/UnboundedKasparovCycle.lean/declarations/resolvent-compact--402cfeaadc262a875fdc95cf.md) | 141 | `result-track:402cfeaadc262a875fdc95cf0fd0fa72d7454cc41aa5c0fc1ecc7ee8d19ac42d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03566a5c57cb5aedcc28f04c0336530c02879adfb47d7a88ea5443d9daf31dc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KTheory/UnboundedKasparovCycle.lean","GRWTSK/_verification/specifications/Algebra/KTheory/UnboundedKasparovCycle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
