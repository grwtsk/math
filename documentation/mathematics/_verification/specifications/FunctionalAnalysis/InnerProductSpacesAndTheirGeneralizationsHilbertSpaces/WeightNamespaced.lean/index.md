# Verification target: Weight Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac8191125078058779533eb0964fbcbf3cd13530",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Weight/Variantf54648ca044f558ed91147f156852c2f132861a427e3c2165c0bb168ef2a5bd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac8191125078058779533eb0964fbcbf3cd13530`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Weight/Variantf54648ca044f558ed91147f156852c2f132861a427e3c2165c0bb168ef2a5bd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Weight/Variantf54648ca044f558ed91147f156852c2f132861a427e3c2165c0bb168ef2a5bd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.L2Space` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [autoWeight](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/declarations/autoweight.md) | 25 | `declaration-track:bc7d5fc274a3e7d86e68ef3dac883db09e7e6502f6bfbc10b337fcb1d084b803` |
| 2 | `def` | [autoMeasure](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/declarations/automeasure.md) | 34 | `declaration-track:51ba0e926a3ada79c0a55fd79de33eaacc27d278e3cccee3e4c268778e7a4f15` |
| 3 | `abbrev` | [Hϕ](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/declarations/h.md) | 44 | `declaration-track:57454bea34aeee8a96bfdc90064fab8ea173cd8c76d2104f252da28f17f955fb` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/declarations/instance.md) | 50 | `declaration-track:bdf0a94b2d6b57277aa8105b1f5b79b553e892c588e46b99e98e1e006e4acf69` |
| 5 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/declarations/instance-source-edition-3.md) | 51 | `declaration-track:d31587a6b969c8af1e3fe019fe1c491fa11f186f0ecc52ddf088e171bc74a951` |
| 6 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightNamespaced.lean/declarations/instance-source-edition-2.md) | 52 | `declaration-track:cbaeb8724fb7d9cbc96d325bdd95521580063286b6f4b20cc22c0dfc02e5bf4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dd25afefc09bd52ee9ad5efa92eb94369ad05e355a50414717ac5a9a9060e92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Weight/Variantf54648ca044f558ed91147f156852c2f132861a427e3c2165c0bb168ef2a5bd1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Weight/Variantf54648ca044f558ed91147f156852c2f132861a427e3c2165c0bb168ef2a5bd1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
