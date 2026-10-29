# Verification target: Source Comparator Scale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca81d955b866da3a8afb1623cb0c9dc136defec8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantd4a5229d80f6a554959fc82da1f01b94cea3a13b5e21cb7cb7e6667672defd33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca81d955b866da3a8afb1623cb0c9dc136defec8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantd4a5229d80f6a554959fc82da1f01b94cea3a13b5e21cb7cb7e6667672defd33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantd4a5229d80f6a554959fc82da1f01b94cea3a13b5e21cb7cb7e6667672defd33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sevenEighthsEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/seveneighthsenvelope.md) | 30 | `declaration-track:f34b6175b719b39bca0c75f679aaf8e58bc09d2a98bdfcc5d6637594cc2d1062` |
| 2 | `def` | [nativeBoundaryScale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/nativeboundaryscale.md) | 33 | `declaration-track:12046ad4178763c8aa4f0e5ec74b3219df357e6b35cb2338d8c6f626f39e8559` |
| 3 | `theorem` | [nativeBoundaryScale_physical_endpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/nativeboundaryscale-physical-endpoint.md) | 36 | `result-track:3bee541042477d2b9eca81bcde740e1297427a16132b9ee08fd116e97c4784b9` |
| 4 | `theorem` | [envelope_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/envelope-ratio.md) | 46 | `result-track:60dbbee0afab779f1333c578a7a1f463ec7ba0197f9d73ff029d16a98dd55a9e` |
| 5 | `theorem` | [envelope_ratio_tendsto](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/envelope-ratio-tendsto.md) | 59 | `result-track:aff41e28d300c505d23361851956f74969f73a48876df6813b735705de53c77d` |
| 6 | `theorem` | [mesh_decay_positive_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/mesh-decay-positive-iff.md) | 69 | `result-track:a09d49c8f2904f7ac46e90d8776e3150c6161d225e747397fcd02bbc832efd35` |
| 7 | `theorem` | [bhp_mesh_decay](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/bhp-mesh-decay.md) | 74 | `result-track:28fa12ecf3c7a2894ea47f21a558da2b4354d102001e72a0f456dab1d918e4b5` |
| 8 | `theorem` | [sevenEighths_mesh_decay_negative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceComparatorScale.lean/declarations/seveneighths-mesh-decay-negative.md) | 78 | `result-track:3b7aa0e7edd0acdbcf03b92c6b14268204e0ce5b69ea18e8575058041099c3e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b782329736e008e7c145a06dacd038d09810ece7b1a5383c7954b731222db7a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantd4a5229d80f6a554959fc82da1f01b94cea3a13b5e21cb7cb7e6667672defd33.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceComparatorScale/Variantd4a5229d80f6a554959fc82da1f01b94cea3a13b5e21cb7cb7e6667672defd33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
