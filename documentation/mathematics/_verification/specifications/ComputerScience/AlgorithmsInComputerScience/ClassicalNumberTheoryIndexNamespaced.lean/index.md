# Verification target: Classical Number Theory Index Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aff62a7e48348634ea66795b2ca1933b3ded0b48",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Varianta2b80032e391bbfa7bfb2912600d76e284805a76dfb077e80f32b89752bfde7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aff62a7e48348634ea66795b2ca1933b3ded0b48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Varianta2b80032e391bbfa7bfb2912600d76e284805a76dfb077e80f32b89752bfde7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Varianta2b80032e391bbfa7bfb2912600d76e284805a76dfb077e80f32b89752bfde7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Mobius` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.EulerPhi` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.SigmaTau` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.AnchorIndex` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusInversionAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/mobiusinversionanchor.md) | 25 | `declaration-track:8ab94647b3e6f5258e94f64d3023d70c1d05213a54dd35c07e18ef00fb6a6893` |
| 2 | `def` | [eulerPhiAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/eulerphianchor.md) | 35 | `declaration-track:59302e18aeebfb852c0dab947a1738ac3f3e6d9682f409ada938e32a31603a4f` |
| 3 | `def` | [divisorProblemAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/divisorproblemanchor.md) | 45 | `declaration-track:87978519ce9c941b407638e7145d86311bc8580cf9e98823c415e8f4ed754278` |
| 4 | `def` | [finiteEulerProductAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/finiteeulerproductanchor.md) | 55 | `declaration-track:718052f9c4abd1c2bd51153302344480808251bf2882eec78fb58236062f212f` |
| 5 | `def` | [analyticEulerProductAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/analyticeulerproductanchor.md) | 65 | `declaration-track:5b37e3fada79a3412c5b03f8640dc0cf622abbb6fb1908167219de05f6f9c561` |
| 6 | `def` | [pntClassicalRouteAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/pntclassicalrouteanchor.md) | 75 | `declaration-track:0841a8bf397e40f364b3c5d483db256b4ad64a7abb8cfaccd98bfcf3fe7f3898` |
| 7 | `def` | [classicalNumberTheoryAnchors](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassicalNumberTheoryIndexNamespaced.lean/declarations/classicalnumbertheoryanchors.md) | 85 | `declaration-track:b6320c89b123726f4540bd327b3ab90cc4b767be923d319cbb619ee958ecb61e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf532f0671f9d876d0a08b81d9420ef7f6442cd689ab755d79258c374abcdc7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Varianta2b80032e391bbfa7bfb2912600d76e284805a76dfb077e80f32b89752bfde7d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ClassicalNumberTheoryIndex/Varianta2b80032e391bbfa7bfb2912600d76e284805a76dfb077e80f32b89752bfde7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
