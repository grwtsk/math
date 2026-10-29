# Verification target: Positivity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ae84f3c4a2228e79182a32eaf22559f2b08a01",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ae84f3c4a2228e79182a32eaf22559f2b08a01`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.TraceFormula` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProvenPositivityData](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/provenpositivitydata.md) | 35 | `declaration-track:ad7cdb0b3e097b366430ce69531985220408296d51e5cd0e9c40d95f08845777` |
| 2 | `theorem` | [positivity_data_uses_operator](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/positivity-data-uses-operator.md) | 42 | `result-track:82e6fced9d4dbfc1719fd2e52964bff860bd017e1e0853a0857ac68d9d4ac284` |
| 3 | `theorem` | [dense_domain_from_operator_data](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/dense-domain-from-operator-data.md) | 48 | `result-track:ae0f321f24d4dc9175bf510ad13ec8a16dab6e5483cf842509ed649b767c1ade` |
| 4 | `def` | [realQuadraticForm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/realquadraticform.md) | 53 | `declaration-track:c518b9700ef8623f41e3cf65f565c6f5dcdbda1c194a3052128df69d9eac2b99` |
| 5 | `def` | [ProvenPositivity](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/provenpositivity.md) | 59 | `declaration-track:0c76795b28c1cba375bce1cee780db1395d3863676a3e64e8adca55a09a7bd79` |
| 6 | `theorem` | [positivity_from_operator_data](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/positivity-from-operator-data.md) | 65 | `result-track:56fb0a77cd247f018102b5750fc6a88a320addcff532f9e441f65d2801229323` |
| 7 | `theorem` | [proven_positivity_from_operator_data](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/proven-positivity-from-operator-data.md) | 72 | `result-track:ce553dab5d868ebeea734b45eb98eca4d82a6eb85db9dec86a7b0f9552bac673` |
| 8 | `theorem` | [selfAdjoint_from_operator_theorem](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/selfadjoint-from-operator-theorem.md) | 78 | `result-track:6515d77933cceed72adbe46802f68874f591dd8070e1f61dea381f5abb618365` |
| 9 | `theorem` | [compactResolvent_from_operator_theorem](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/compactresolvent-from-operator-theorem.md) | 84 | `result-track:aec1fbc8f488adb42db9c16ec3b18dabb3024e278988bea448d1a9e28e2492e1` |
| 10 | `theorem` | [spectral_reality_from_selfAdjoint](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/spectral-reality-from-selfadjoint.md) | 90 | `result-track:5d2bd5de66dbef147c005095df2b1ea198aa4cc3c63cf51f5c2337072fd58d95` |
| 11 | `theorem` | [real_spectrum_from_selfAdjoint_theorem](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositivityNamespaced.lean/declarations/real-spectrum-from-selfadjoint-theorem.md) | 97 | `result-track:a70628ad6dec13873a5790f6355df43d3ab53863fff52ead5100227715740118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a390d5bac5e066ac4f75efc4448617cffd7bbcd571ed5618c695eaa7183bc84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
