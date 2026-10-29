# Verification target: Fin Range Namespaced Public Mem Fin Range

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcb7bef1b6987c45d565caa18907c44c7ebfd186",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant2a3e7815a0eec33264670f82fbbd589e59b5ad9f178eef98c181ee7ebc048631.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcb7bef1b6987c45d565caa18907c44c7ebfd186`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant2a3e7815a0eec33264670f82fbbd589e59b5ad9f178eef98c181ee7ebc048631.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant2a3e7815a0eec33264670f82fbbd589e59b5ad9f178eef98c181ee7ebc048631.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Monadic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/finrange.md) | 36 | `declaration-track:ea255eb3cc6cec7a4686627d8b4a97d3d798ddb2bf7c32768c7d41695f8db3a2` |
| 2 | `theorem` | [length_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/length-finrange.md) | 38 | `result-track:0eff91360e667dfb15e21c7ac37b386025fb234cf4c38249abd176e45b00811f` |
| 3 | `theorem` | [getElem_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/getelem-finrange.md) | 41 | `result-track:0687b17ba35d92df503626a5a70c7ea11bb4df77d965af9e422afb1b5fb0df73` |
| 4 | `theorem` | [finRange_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/finrange-zero.md) | 45 | `result-track:a081610b8b9c76c6201dc66bd338f5a398ef08a8535073d1533a6c52cce98163` |
| 5 | `theorem` | [finRange_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/finrange-succ.md) | 47 | `result-track:fc471a2a19f127f576cef61cf8640bc5298523bf7bb339c97da9e343b9145bb8` |
| 6 | `theorem` | [finRange_succ_last](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/finrange-succ-last.md) | 50 | `result-track:7aa8e14de5ef32de980806c32335cc8204b3060096c92c09a3f4a50a81316abe` |
| 7 | `theorem` | [finRange_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/finrange-reverse.md) | 62 | `result-track:b88dc7e60be86ae5d5c3ce0506e5cc41aae269bf2ac230f14b920d59c929e31b` |
| 8 | `theorem` | [mem_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/mem-finrange.md) | 74 | `result-track:8d4f340eeba48380b21a063eb9a4902316892282a0bdf42a6a255703ac53ab8a` |
| 9 | `theorem` | [foldlM_eq_foldlM_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/foldlm-eq-foldlm-finrange.md) | 81 | `result-track:8ce6514a884a00c62dfb56d669d7f6ebe44bd5bd56ad6b355193cca8ce32ad79` |
| 10 | `theorem` | [foldrM_eq_foldrM_finRange](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/foldrm-eq-foldrm-finrange.md) | 91 | `result-track:7095d99af3b9fae6c32da8b91da5fc282ae163dcb73b0efb036628b665ad310b` |
| 11 | `theorem` | [foldl_eq_finRange_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/foldl-eq-finrange-foldl.md) | 98 | `result-track:1f48924988d3e0b435038c82ed89d4f922d1de5a515f4500cedf820b69472ab3` |
| 12 | `theorem` | [foldr_eq_finRange_foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/foldr-eq-finrange-foldr.md) | 105 | `result-track:bdffa4b17c415ff19bec18898a42cd9c7c94fecc28920772ad78e8888d95f689` |
| 13 | `theorem` | [ofFnM_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FinRangeNamespacedPublicMemFinRange.lean/declarations/offnm-succ.md) | 116 | `result-track:aa202c148d6026d8576911bc2bf89386251972342d7e7961cede958fd80cb93d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34a37140fcae2bc1d6174d1b5fcb03626f012c518b4f7e10dec730ae69dcb04b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant2a3e7815a0eec33264670f82fbbd589e59b5ad9f178eef98c181ee7ebc048631.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant2a3e7815a0eec33264670f82fbbd589e59b5ad9f178eef98c181ee7ebc048631.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
