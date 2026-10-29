# Verification target: Dual Quaternion Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4651d8a801562f6d1ea228cb6253a7aa74bb49a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variantf1b6fca1077031d52a15da94990711db3cf07b1e7d91731a9fe354feba2c0a0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4651d8a801562f6d1ea228cb6253a7aa74bb49a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variantf1b6fca1077031d52a15da94990711db3cf07b1e7d91731a9fe354feba2c0a0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualQuaternion/Variantf1b6fca1077031d52a15da94990711db3cf07b1e7d91731a9fe354feba2c0a0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/dualnumberequiv.md) | 38 | `declaration-track:14fce6e1ff65c8012cf610a36a7c0058f5d969839e1d27954a8f9df6fecc6173` |
| 2 | `theorem` | [re_fst_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/re-fst-dualnumberequiv.md) | 55 | `result-track:c742932e7ae424d59c8cd649d5531d0b261e8853fa86a7c750ba209a7bde0738` |
| 3 | `theorem` | [imI_fst_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/imi-fst-dualnumberequiv.md) | 60 | `result-track:7b070ee31e642336db2d4c1555462ffab5d56b1f8e7dbe279a1dde06a1fcc6bf` |
| 4 | `theorem` | [imJ_fst_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/imj-fst-dualnumberequiv.md) | 65 | `result-track:c1f5c430f6912443a2eb1370e4abb68cea5b5f163b5bb2e5f22d174ef6af8ce9` |
| 5 | `theorem` | [imK_fst_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/imk-fst-dualnumberequiv.md) | 70 | `result-track:d9b1d87c09fd534e3198cdb267b5574361ccb9a4e1c5a49602595616aca0a072` |
| 6 | `theorem` | [re_snd_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/re-snd-dualnumberequiv.md) | 75 | `result-track:5925b474ba0019e247efe8385074549ad8df0d8d9238a9d8d3f3ddfd89af4ef2` |
| 7 | `theorem` | [imI_snd_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/imi-snd-dualnumberequiv.md) | 80 | `result-track:e9c0cfd02f4e4b662e539037c43127aecb3a3cbaee081afa34aee31b543b3da3` |
| 8 | `theorem` | [imJ_snd_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/imj-snd-dualnumberequiv.md) | 85 | `result-track:7d2bd549dbfa19d278a9a3ad1d0f1c4df165fdbb714c6b2d293cacdbb4af31d4` |
| 9 | `theorem` | [imK_snd_dualNumberEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/imk-snd-dualnumberequiv.md) | 90 | `result-track:d65d82310b7f3496e6b19ee2c8310e987fd925c6f022f7510b5b6db00618d5df` |
| 10 | `theorem` | [fst_re_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/fst-re-dualnumberequiv-symm.md) | 95 | `result-track:0c5cea57f874bc788e29d4feb365fb6fabfea2d65c2acfaeb99a802d72208b0e` |
| 11 | `theorem` | [fst_imI_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/fst-imi-dualnumberequiv-symm.md) | 100 | `result-track:5a460935853cf120f09f3e38ad3b332058befb075d8de6a74cf0282cc144effb` |
| 12 | `theorem` | [fst_imJ_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/fst-imj-dualnumberequiv-symm.md) | 105 | `result-track:d87adff68140d45fc56719ff98f650d47a30a454546167102cd4837ba055e56a` |
| 13 | `theorem` | [fst_imK_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/fst-imk-dualnumberequiv-symm.md) | 110 | `result-track:fee8b087f68e012bd229a40d553d271f9ee10fba243a2b218f0efee358e59a3d` |
| 14 | `theorem` | [snd_re_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/snd-re-dualnumberequiv-symm.md) | 115 | `result-track:461d244f01fd96b3a7c776e6fde42ad4d7ce19b5d296a3d91d6e612d62ede426` |
| 15 | `theorem` | [snd_imI_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/snd-imi-dualnumberequiv-symm.md) | 120 | `result-track:cb79e953b4b94c381821efea292f467e26ac8d09d1b73aee2b59e68c9359f874` |
| 16 | `theorem` | [snd_imJ_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/snd-imj-dualnumberequiv-symm.md) | 125 | `result-track:1b15624cf7a3c27e097fd42f80235fe9311093b22b7130dabde52814e18a273c` |
| 17 | `theorem` | [snd_imK_dualNumberEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DualQuaternionPublic.lean/declarations/snd-imk-dualnumberequiv-symm.md) | 130 | `result-track:f194e2d6a00606c08baf2fcb1150688b5b7cb58bbdd259aa54924aa2d068b7c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5951b654607d6c6e11ed20b8caa8ac3df92338f4e43be85a67066acd4142c132 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variantf1b6fca1077031d52a15da94990711db3cf07b1e7d91731a9fe354feba2c0a0a.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/DualQuaternion/Variantf1b6fca1077031d52a15da94990711db3cf07b1e7d91731a9fe354feba2c0a0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
