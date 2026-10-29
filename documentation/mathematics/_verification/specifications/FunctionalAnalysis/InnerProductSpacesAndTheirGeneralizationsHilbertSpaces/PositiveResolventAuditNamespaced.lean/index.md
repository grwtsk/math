# Verification target: Positive Resolvent Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b7354401615869a74b82e53e64512fddf54ca2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b7354401615869a74b82e53e64512fddf54ca2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveshift.md) | 29 | `declaration-track:9898cd5c926f09d5c57c6d8436e0e2d9547a9aa1dd9f04225e5f75911c7b0b80` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveshift-ispositive.md) | 33 | `result-track:2b8d3ad15f3bca2f12223234ff41222488be24ca6fd9338323ca65d2498f3a4a` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveshift-coercive.md) | 40 | `result-track:64ebc465b1d33faa6bb231774b3cabf2d10bc173861a264fd61d726c7eb03eb0` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveshift-isunit.md) | 55 | `result-track:cc3fb4682bfe31983d7866a4076a68dcfb15474e7c76342640442bfcbdbfd449` |
| 5 | `def` | [positiveResolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveresolvent.md) | 66 | `declaration-track:3951525fdc9eeed285a1c7c8b27f1d6d0646b0bb1f957b2d25699313bc83eee8` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveshift-mul-resolvent.md) | 70 | `result-track:1f1c80fc1a88d3a4a56ec80ebf76fa647389239c1dc15538854f8c8901d1f89f` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/resolvent-mul-positiveshift.md) | 75 | `result-track:29b6084d69796d6228a534191d68b2434a4b54461a4c4a46b51fc67948c9291e` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveshift-resolvent-apply.md) | 80 | `result-track:afe0b95d31069acfe88014693b97b375291635ce4f2c0f959710d4bceba4b55b` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveresolvent-norm-le.md) | 87 | `result-track:7f72d6e59c60fc59fabef15f30a84375f1c1b9232bcb6228cf583e8e3d33309e` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveresolvent-ispositive.md) | 103 | `result-track:f27f31156047ef3ffb0c302d2cbee1926a60ee17b1d304725c832320fa8554c9` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveresolvent-sub.md) | 114 | `result-track:5423c0ce45b4e1c0d91d068f67ef918c849f101dd0726262a0507a4e895a754b` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/positiveresolvent-sub-norm-le.md) | 126 | `result-track:4935415393a1a06e25e9c83e1752db3b2f974bac374021b93c8a1cae76706160` |
| 13 | `def` | [regularizedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/regularizedmass.md) | 140 | `declaration-track:eea562be59a45584fb12124e090d337859ccb8b03e35b8f13f41622b60e3a72f` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/abs-re-inner-map-le.md) | 144 | `result-track:5f595f5144a68baaa02d4f02f2c7a02bacabd9628812f7c9633bf058f7c9862c` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/regularizedmass-sub-abs-le.md) | 153 | `result-track:c57a30d171079c4b758debca88eda5c1e8af83f485db02b204d08fbe9dfa741f` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventAuditNamespaced.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 173 | `result-track:9f9eecc7df57f33f4f1fe4201f2340ccbbd9b811056c155dd3e8a81a69fa6cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e494e55f14a3714c1a376b3e1f5424d9aeda5cc620e87320fcbadf5cf7b16a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
