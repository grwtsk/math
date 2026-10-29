# Verification target: Euclid Infinitude Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b7007156900c4cadccd786892b784f4c86f827",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclidInfinitudeNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclidInfinitudeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b7007156900c4cadccd786892b784f4c86f827`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listBound](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclidInfinitudeNamespaced.lean/declarations/listbound.md) | 15 | `declaration-track:fd27243a20eb284059e220a5b0ba31e3472787ecfa12327cb431c834099ab816` |
| 2 | `theorem` | [mem_le_listBound](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclidInfinitudeNamespaced.lean/declarations/mem-le-listbound.md) | 19 | `result-track:2df2552ccf8d9d46dbca35daad33b2a9dcacdcda2a5e90e37c911cc6da62a462` |
| 3 | `theorem` | [euclid_prime_not_in_finite_list](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclidInfinitudeNamespaced.lean/declarations/euclid-prime-not-in-finite-list.md) | 35 | `result-track:ea330474d1de9df86a261353a3ed377f3877058a38977462048f52402e6151b8` |
| 4 | `theorem` | [infinitely_many_primeLabels](../../../../../ComputerScience/AlgorithmsInComputerScience/EuclidInfinitudeNamespaced.lean/declarations/infinitely-many-primelabels.md) | 47 | `result-track:bfb81bc9b6aafe7e0949807729e31eb97285a3aa94041ba650e0ee132e7caea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71517f378d64e323b73cb1badaa91e021ea0b8c57f42d7103b015d23b7690d19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
