# Verification target: All Orders Raw Moment Derivative Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12288ba947808187a77ca6f8729ae47383d63338",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12288ba947808187a77ca6f8729ae47383d63338`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiff_unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/contdiff-unnormalizedweight.md) | 52 | `result-track:f2de7cc6f43ec9cf34be0bfd2df996a405a50b5317a7141b3ad443249896b0fb` |
| 2 | `theorem` | [iteratedFDeriv_unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/iteratedfderiv-unnormalizedweight.md) | 62 | `result-track:4601348749ddad3791c709d568788568c0ea76825aa771af61ac3146e8732adc` |
| 3 | `theorem` | [iteratedFDeriv_partition_eq_unnormalizedMoment](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/iteratedfderiv-partition-eq-unnormalizedmoment.md) | 107 | `result-track:53413de1735a48e03769311dd27aa772fb395f6661048952867f7a10bb3ea336` |
| 4 | `theorem` | [partition_mul_rawDirectionalMoment](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/partition-mul-rawdirectionalmoment.md) | 131 | `result-track:816ca7348faefb5f722e360b205239e6c96aa5bf21d36a690061f6d92239ce0e` |
| 5 | `theorem` | [iteratedFDeriv_partition_eq_partition_mul_rawMoment](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/iteratedfderiv-partition-eq-partition-mul-rawmoment.md) | 148 | `result-track:ea89a0e5ca17bcf81a64bea15dc424823c837e96510f00649413fe5cb016f4c8` |
| 6 | `theorem` | [inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/inv-partition-mul-iteratedfderiv-partition-eq-rawmoment.md) | 171 | `result-track:a70628197a35d00677cfca0e68214b48af21d1b846b551e26ca8bcda0517b8d2` |
| 7 | `theorem` | [iteratedFDeriv_partition_div_partition_eq_rawMoment](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AllOrdersRawMomentDerivativeNamespacedEdition2.lean/declarations/iteratedfderiv-partition-div-partition-eq-rawmoment.md) | 183 | `result-track:98c3ba6f38a8c6a17d45b10102a1d5e3eb6ed3a33653625c9025a5e3a124ec18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c05d0453cae6f90b588061c84286834f297e5e11f97adbc1abe719ae41401597 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AllOrdersRawMomentDerivative/Variantbda298e19f234f5dcdd08b4b4f167be8440e30c2a80677cbff1695e20894e4f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
