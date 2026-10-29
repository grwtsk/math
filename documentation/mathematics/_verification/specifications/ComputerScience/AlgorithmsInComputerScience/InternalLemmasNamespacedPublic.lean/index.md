# Verification target: Internal Lemmas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09bbef6dd1faf64596bb38fd5ddae57d45c9ff0d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant38ed8255b8faaae1414da25a6ff448e8b197e179b7fb16f5b00f4d0a8a44a2f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09bbef6dd1faf64596bb38fd5ddae57d45c9ff0d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant38ed8255b8faaae1414da25a6ff448e8b197e179b7fb16f5b00f4d0a8a44a2f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant38ed8255b8faaae1414da25a6ff448e8b197e179b7fb16f5b00f4d0a8a44a2f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Control` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Internal.iter_eq_toIteratorIter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-iter-eq-toiteratoriter.md) | 31 | `result-track:627152c9b1afb3381bfe933a16b73323b62eb80b1d855e3e6bef1e72ca76209f` |
| 2 | `theorem` | [Internal.forIn_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-forin-iter.md) | 36 | `result-track:8420d24b75eb698efcc751da369d016ff8d745bfac6ed85393a17061c9ce5d52` |
| 3 | `theorem` | [Internal.size_eq_length_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-size-eq-length-iter.md) | 45 | `result-track:16c49727873e5c8cbbd92a0224d1ebfa1029990456bec2ef264d946d427cb63e` |
| 4 | `theorem` | [Internal.toArray_eq_toArray_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-toarray-eq-toarray-iter.md) | 52 | `result-track:de4d41cdca88c29e8e4b9ecf1cf443c44b6799e8aaf4118023583ee509fbd25f` |
| 5 | `theorem` | [Internal.toList_eq_toList_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-tolist-eq-tolist-iter.md) | 58 | `result-track:de8a7cf7751273dfc45798930aab82913e62a6cfe20954f49d2fc954b723a378` |
| 6 | `theorem` | [Internal.toListRev_eq_toListRev_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-tolistrev-eq-tolistrev-iter.md) | 64 | `result-track:fce05747e0fb08665536463736f0bafacb20d01e33954119f867b1d56dda46a8` |
| 7 | `theorem` | [Internal.fold_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-fold-iter.md) | 69 | `result-track:b095ce435d7cacfdfaed0085b604a0e94b5233220d578f7f082fb88ec0681c14` |
| 8 | `theorem` | [Internal.foldM_iter](../../../../../ComputerScience/AlgorithmsInComputerScience/InternalLemmasNamespacedPublic.lean/declarations/internal-foldm-iter.md) | 74 | `result-track:e3e40b7768036d01029c552801cd5f9be20d2cf9ea4c6a0fd28ca0f61430acfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73b1e03505f173ac01282f0bc9d6a764e0c11e55cd6a2d1143912a98938f2bf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant38ed8255b8faaae1414da25a6ff448e8b197e179b7fb16f5b00f4d0a8a44a2f1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant38ed8255b8faaae1414da25a6ff448e8b197e179b7fb16f5b00f4d0a8a44a2f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
