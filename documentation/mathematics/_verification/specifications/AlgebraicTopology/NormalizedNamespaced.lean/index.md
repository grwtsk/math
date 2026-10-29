# Verification target: Normalized Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1291d70b8dc1b9f7e9f7e2659e6e3e71adc68112",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant3c5031f9cfde99dabedc6386384d22864401c8bdceac126880d14138f764652e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/NormalizedNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/NormalizedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1291d70b8dc1b9f7e9f7e2659e6e3e71adc68112`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant3c5031f9cfde99dabedc6386384d22864401c8bdceac126880d14138f764652e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant3c5031f9cfde99dabedc6386384d22864401c8bdceac126880d14138f764652e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.FunctorN` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HigherFacesVanish.inclusionOfMooreComplexMap](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/higherfacesvanish-inclusionofmoorecomplexmap.md) | 50 | `result-track:c92f1de4110697fc6fb0ec14da0ca47837e57218fa49b7efb57e4124674acda3` |
| 2 | `theorem` | [factors_normalizedMooreComplex_PInfty](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/factors-normalizedmoorecomplex-pinfty.md) | 56 | `result-track:29650d173d656d5ad6ec3051eaac5aff548872ea03898a07381d176c1c6bee50` |
| 3 | `def` | [PInftyToNormalizedMooreComplex](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/pinftytonormalizedmoorecomplex.md) | 67 | `declaration-track:a627bb0d1b1d83675c4d1ef745510acc86ad82db964065c68cb72eaa4da0ca00` |
| 4 | `theorem` | [PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/pinftytonormalizedmoorecomplex-comp-inclusionofmoorecomplexmap.md) | 77 | `result-track:60ed52d18074745f6921aa4b236f57400d6855a9774dc645018d61531a297250` |
| 5 | `theorem` | [PInftyToNormalizedMooreComplex_naturality](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/pinftytonormalizedmoorecomplex-naturality.md) | 81 | `result-track:092297343f38d8ffb0ada43139334985c00782403a5896b7ef15eeb3dabc45ac` |
| 6 | `theorem` | [PInfty_comp_PInftyToNormalizedMooreComplex](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/pinfty-comp-pinftytonormalizedmoorecomplex.md) | 87 | `result-track:afe35c03f38092b4398905b098db60aeeb30a1733e541dae97a477627beb3bca` |
| 7 | `theorem` | [inclusionOfMooreComplexMap_comp_PInfty](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/inclusionofmoorecomplexmap-comp-pinfty.md) | 91 | `result-track:6b1133d24b6ab7c739b5775dfbcf8ad9ed320afee11f5f8ab4e657b23c610214` |
| 8 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/instance.md) | 98 | `declaration-track:5dff65c50016385b78bedc686e410269bf3f524fe9d1176ddaafec5eb3119a6b` |
| 9 | `def` | [splitMonoInclusionOfMooreComplexMap](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/splitmonoinclusionofmoorecomplexmap.md) | 106 | `declaration-track:c3f2ce275ad75f64ceb91ea6006a697f2efe48536524fd6f6ef478a20c0092eb` |
| 10 | `def` | [N₁_iso_normalizedMooreComplex_comp_toKaroubi](../../../../AlgebraicTopology/NormalizedNamespaced.lean/declarations/n-iso-normalizedmoorecomplex-comp-tokaroubi.md) | 120 | `declaration-track:cbf6ea14f74ad95816494f806de0a31a633e03dc67da5c553b908d8bb694940a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc05720978844446a2822e52067b1959c51a160a21738fcced6249e0e653ad43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant3c5031f9cfde99dabedc6386384d22864401c8bdceac126880d14138f764652e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant3c5031f9cfde99dabedc6386384d22864401c8bdceac126880d14138f764652e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
