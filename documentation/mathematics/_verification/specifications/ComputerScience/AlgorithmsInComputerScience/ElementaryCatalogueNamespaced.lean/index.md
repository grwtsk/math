# Verification target: Elementary Catalogue Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9383e61c7238e15c472beac10641c413fa0779d1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variant9a9e5eb28493492992d743f0761fbcad29f50ee3cc82fd1665cfffebb6648d0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9383e61c7238e15c472beac10641c413fa0779d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variant9a9e5eb28493492992d743f0761fbcad29f50ee3cc82fd1665cfffebb6648d0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variant9a9e5eb28493492992d743f0761fbcad29f50ee3cc82fd1665cfffebb6648d0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.EMLTree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ElementarySymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/elementarysymbol.md) | 13 | `declaration-track:24d34c8a47b244baf53e03f459ac1643cae19b10e281e1d93879bf85cfc00539` |
| 2 | `def` | [ElementarySymbol.name](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/elementarysymbol-name.md) | 34 | `declaration-track:7cdd409478ed1ca933bce2bb0f35640d0d56406c707f09ca1b623ef593628dbf` |
| 3 | `def` | [elementaryArity](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/elementaryarity.md) | 54 | `declaration-track:e86be11993feb5b7922168a8d0138a48d8db33ffe80e99db760f32cfc346033f` |
| 4 | `def` | [targetElementaryBasis](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/targetelementarybasis.md) | 74 | `declaration-track:c3e658bb78a0c5ceaf04573bcda007fec633fa80140f01a36176560ffe2fe90b` |
| 5 | `def` | [selectedElementaryBasis](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/selectedelementarybasis.md) | 78 | `declaration-track:fb02169ff99b863164e8633cb5ffefbf72ab55fdc3a5d18090e24e9ed176bfe5` |
| 6 | `theorem` | [selected_subset_target](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/selected-subset-target.md) | 81 | `result-track:219f27e1c4fecd53e4714cbce16eeed5e99b6d0655e5161149496ece967d4977` |
| 7 | `theorem` | [selected_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/selected-nodup.md) | 95 | `result-track:760a780c7f4cf72a194feda2d6415a98dcb4c7d3646b8c81d817745e87bcf92d` |
| 8 | `theorem` | [target_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/target-nodup.md) | 98 | `result-track:7cf033796fd69a65573c8504d179568c4d8b7e57a969def6dc8008d700716fc4` |
| 9 | `def` | [emlOneTree](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/emlonetree.md) | 101 | `declaration-track:7487424a68c8180fb17b03e60ee80695573d79e28f2a410efe175ab264bf6ca8` |
| 10 | `def` | [emlVarTree](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/emlvartree.md) | 104 | `declaration-track:3610d3c72945a97faf143e15bc711061bb5884cf55e526b2cc32e16e41b66d78` |
| 11 | `def` | [emlExpTree](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/emlexptree.md) | 107 | `declaration-track:d6f64a7cd06c09e8e8fcba27f915fb7554be8b6e97fe920aa5e942b1f224ada7` |
| 12 | `def` | [emlLogTree](../../../../../ComputerScience/AlgorithmsInComputerScience/ElementaryCatalogueNamespaced.lean/declarations/emllogtree.md) | 110 | `declaration-track:af6ccd9c2ccce8b1de35720bdf69e5df9e2c974458c8cdb98a6c3522a0dec298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=860f4897effed077657c9330617e9a27b0e89ef496c5963bd7287de9cfaeedc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variant9a9e5eb28493492992d743f0761fbcad29f50ee3cc82fd1665cfffebb6648d0f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variant9a9e5eb28493492992d743f0761fbcad29f50ee3cc82fd1665cfffebb6648d0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
