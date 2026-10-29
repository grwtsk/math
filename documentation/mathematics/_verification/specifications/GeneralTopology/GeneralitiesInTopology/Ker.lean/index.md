# Verification target: Ker

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03b1f8c2347e31acae58cc0f8684f05775192360",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ker/Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03b1f8c2347e31acae58cc0f8684f05775192360`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ker/Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ker/Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Map` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ker_def](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-def.md) | 24 | `result-track:cb231697b6b2948a574908f6d68f021b31c99a51a68a4202bc43cef7bb6d33b1` |
| 2 | `lemma` | [mem_ker](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/mem-ker.md) | 26 | `result-track:e327dad644d71894be8365644399a92e01facb231daeea3a96ef951c28138eac` |
| 3 | `lemma` | [subset_ker](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/subset-ker.md) | 27 | `result-track:2f39b0cf727cd6333b98b8c1dd6365aac65e1ad20c5fec30ea321f6b267b84fb` |
| 4 | `def` | [gi_principal_ker](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/gi-principal-ker.md) | 30 | `declaration-track:f6b5d410a2f851bcd878578d17e1ad1a0c88109c007a13a74c6829a1f67e8fb0` |
| 5 | `lemma` | [ker_mono](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-mono.md) | 34 | `result-track:9cefa9e388d79624b1d2116ff16fb99e295b05b31b4b15024758e31339df9fb5` |
| 6 | `lemma` | [ker_surjective](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-surjective.md) | 35 | `result-track:cb34897ac158ec987d8ef8fae0198b15aacead8a3ed200e3cf3fb6d80e2e1d9a` |
| 7 | `lemma` | [ker_bot](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-bot.md) | 37 | `result-track:7a8bd7fdb678f19e70b7aa5874fe8ea02957cb8151dabfff98bec84a885a4a57` |
| 8 | `lemma` | [ker_top](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-top.md) | 38 | `result-track:ec90a9ee24f365f0bf33dc81623dc0a1b82b93059a3f760b1f313409e949a383` |
| 9 | `lemma` | [ker_eq_univ](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-eq-univ.md) | 39 | `result-track:de5738ed0c4b6f45495330a61c679fed93d02a84d7909b994d635ed02efc1a89` |
| 10 | `lemma` | [ker_inf](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-inf.md) | 40 | `result-track:01dc0eb9510be87a3edc2b7c81223439aab3a18ff24b5a19ae3caa980a7b5505` |
| 11 | `lemma` | [ker_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-iinf.md) | 41 | `result-track:17845bfc34d852124e0d6a8db17ed7088228151eaded3d6810e642e576e1a954` |
| 12 | `lemma` | [ker_sInf](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-sinf.md) | 43 | `result-track:a3be3532c91bbe07c3c84933a45756c51a83ad36d8af56fd5e484bf3d2424622` |
| 13 | `lemma` | [ker_principal](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-principal.md) | 45 | `result-track:64285d0d8562d93f8b7f16294917151da3b97d6c27c7711e75cecd4b8340e448` |
| 14 | `lemma` | [ker_pure](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-pure.md) | 47 | `result-track:4a36f32907a16c2ac48bc728b006e4a018fa1b7e90078891c7545e0a9cfdaf48` |
| 15 | `lemma` | [ker_comap](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-comap.md) | 49 | `result-track:e27e2818d3af26c5e1b6a8c8a9ed2ea0d090becbe006b07824f47135c5051ef8` |
| 16 | `theorem` | [ker_iSup](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-isup.md) | 55 | `result-track:d077350cb044338706af7023922fff5f2d78c4d96b6c775b43fd5c729be29b16` |
| 17 | `theorem` | [ker_sSup](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-ssup.md) | 64 | `result-track:053e9639ff5bb27589a01dfe77e1ce068b7101bcb449a1dc74b636bde67d74f5` |
| 18 | `theorem` | [ker_sup](../../../../../GeneralTopology/GeneralitiesInTopology/Ker.lean/declarations/ker-sup.md) | 68 | `result-track:2cf9151b687ccb84dfd832efe3f51757454886b170ac8ad85ed3da0ae1033604` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a96a71e3ab6f8a0cbb7c7929ff9fd0cf3feae429ef70419b9f1d169507460a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ker/Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ker/Variantc034a1354d536effc5dcde21771251e34e1661724c9dc10664722df2309eb9b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
