# Verification target: Finite Euler Expansion Index

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1014aaa64d565a2de271f1e05fc848feb3da3481",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteEulerExpansionIndex/Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1014aaa64d565a2de271f1e05fc848feb3da3481`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteEulerExpansionIndex/Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteEulerExpansionIndex/Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.WeightedDirichletPolynomialProduct` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.Exposition.AnalyticNumberTheoryIndex` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedFiniteCauchyProductAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/declarations/weightedfinitecauchyproductanchor.md) | 15 | `declaration-track:1a067ff3cd5a3f84869fe62749d6ed3d4ae804f22c7ce71bba3457159dbd6fdb` |
| 2 | `def` | [finiteExponentVectorEulerExpansionAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/declarations/finiteexponentvectoreulerexpansionanchor.md) | 25 | `declaration-track:cf5dc382779ecfc49c4ce8181044c6906d34f285df642721e4b41c3d25921443` |
| 3 | `def` | [boundedSmoothNumberReindexingAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/declarations/boundedsmoothnumberreindexinganchor.md) | 35 | `declaration-track:5d61f68e270381f711a37b31056d1b5068e22b42457a20125b6b7596fe0e4e6b` |
| 4 | `def` | [infiniteEulerProductTargetAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/declarations/infiniteeulerproducttargetanchor.md) | 45 | `declaration-track:ae74b83b9c38395b2adca526200dd22ae4e9dff1b8f76e471e6c473b1be31f46` |
| 5 | `def` | [dirichletSeriesCauchyProductTargetAnchor](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/declarations/dirichletseriescauchyproducttargetanchor.md) | 55 | `declaration-track:482ca14e7de3416a5742579a23690ba84ed1683783d5c042e77ea4870ee53e8a` |
| 6 | `def` | [finiteEulerExpansionAnchors](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteEulerExpansionIndex.lean/declarations/finiteeulerexpansionanchors.md) | 65 | `declaration-track:897cc8911fc6b79c080a051fc7e4e4584733e06c2779a423454db1b487c3c4f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6bb3e049bdbdb939e82729482878d62e0d034c334232a24d4670fe7e8978937 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteEulerExpansionIndex/Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteEulerExpansionIndex/Variant47a8d99cfd472857a0bf01b1a4e55aa316f982aab8bb65fe5120246d71dd8864.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
