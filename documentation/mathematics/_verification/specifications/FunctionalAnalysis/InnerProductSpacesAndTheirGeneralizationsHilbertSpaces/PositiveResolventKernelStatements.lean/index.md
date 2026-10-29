# Verification target: Positive Resolvent Kernel Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d0ffbec8be143862569a053a1805567d7dd9355",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantb5699b6c6242531e1f64d5ee8ba2a437164fc61a63bb6120d04843ee94252db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d0ffbec8be143862569a053a1805567d7dd9355`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantb5699b6c6242531e1f64d5ee8ba2a437164fc61a63bb6120d04843ee94252db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantb5699b6c6242531e1f64d5ee8ba2a437164fc61a63bb6120d04843ee94252db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveshift.md) | 21 | `declaration-track:d74eed39a10d0d633a02049598e1b36ff0ff84ef1b893508b253b79309e26528` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveshift-ispositive.md) | 25 | `result-track:dd7122ec22d3662886191805f647a807075ac8ef9b431fad238e600dc1ed646b` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveshift-coercive.md) | 32 | `result-track:50f50201aed9c7702c289cbc69c99a9045b6de3cab13d069b3509956c8a58a33` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveshift-isunit.md) | 47 | `result-track:68b17cef74c654e513ce86078caa75c76393cc5aeea4ad6a27764de284cc17cd` |
| 5 | `def` | [positiveResolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveresolvent.md) | 58 | `declaration-track:f4f65601e25b6381030746a39220cc33997a70fc40c4dcd791d1c9f60bc16ebd` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveshift-mul-resolvent.md) | 62 | `result-track:0460b89d51a3a3810f25cca0ed92b5b8a94a73e5345058f152342929f05e1ea7` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/resolvent-mul-positiveshift.md) | 67 | `result-track:80f648037113f0ad0083e44e627060629ca9add5efaa254997bde3336cd51d16` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveshift-resolvent-apply.md) | 72 | `result-track:c503144c04ed1cd439e9b15696ed11862201fd247f128c990039cb50e87843d3` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveresolvent-norm-le.md) | 79 | `result-track:b58297be64ab0e229e1e89355558a336bf444a36532bbc71c61b121a011aa6c0` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveresolvent-ispositive.md) | 95 | `result-track:cace4254bfea44c2ccec1249a54398416587ff8b791743ae3fa098eec0e47749` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveresolvent-sub.md) | 106 | `result-track:ea46828f701661f18d6cf158275a9590fc9e70a99996cff65cbec8f25c7cdfd0` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positiveresolvent-sub-norm-le.md) | 118 | `result-track:28ced00b2903231f54e086ec2c74aca5264c7bd21de08a8a58bcc9667550c15c` |
| 13 | `def` | [regularizedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/regularizedmass.md) | 132 | `declaration-track:3a5c7b937d2495ba942c53417c2e04bec9d9b0fadaf8501116b1142b589ca6cc` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/abs-re-inner-map-le.md) | 136 | `result-track:ed8b03f64de96ba1d153c102ab6d8c7fbcb8c8f24e98b53349c07f98b8333d4d` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/regularizedmass-sub-abs-le.md) | 145 | `result-track:430f0aad5aef82d04619ce9a8957be05e043b6ddca81a1abe22a2c9cff241284` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 165 | `result-track:6b4b1777ed5929dfae5eb2c1118cdc63c80ecfcce13886bdcb1ab8ae22f2cb70` |
| 17 | `theorem` | [positive_fixed_direction_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/positive-fixed-direction-le.md) | 190 | `result-track:58af32bc7b3e106d3492cba4734a26b564dd36d7cf9eb23f3c1143ea7e15c4c1` |
| 18 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/regularized-resolvent-kernel-apply.md) | 223 | `result-track:0c3d3861102accf66546c9b02199a06a36932a9c2333c90254ae0edaf98f1561` |
| 19 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/kernel-witness-regularizedmass-le.md) | 231 | `result-track:ede00f876565d2b927e4b25214513994496aa49a6a9c780a408e150876c12628` |
| 20 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/example-source-edition-4.md) | 251 | `declaration-track:f45d837ee51385603a84a98cca11bf23352a7bd1855cd515637fb8d0fe291c48` |
| 21 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/example-source-edition-2.md) | 255 | `declaration-track:3d31d7b4f4f6069ca8a5b5087dbdf4c7032fc27b4d0a042cd1b74b28efd9f5b4` |
| 22 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/example.md) | 259 | `declaration-track:19ca4120506f7a8984d5effc82261c9795ad198a1015857d88612a7e4474cb02` |
| 23 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelStatements.lean/declarations/example-source-edition-3.md) | 263 | `declaration-track:c75bab7986dc4b06dcee1b8ccd17d96612cdecf7e709d6b58d3802cdd088e5f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e72ef73ca45205d66c20212732b1e6b71e369e6cc8e6e3a65a68b0f98818fabe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantb5699b6c6242531e1f64d5ee8ba2a437164fc61a63bb6120d04843ee94252db2.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantb5699b6c6242531e1f64d5ee8ba2a437164fc61a63bb6120d04843ee94252db2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
