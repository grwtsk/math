# Verification target: Hydra Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c28aadca9d8496de326ed625e8a7da060bd4e54",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantb108bdd127fe07ff48745cbbe657816152ab97f6a43a8aaab1bef76d123ef4aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c28aadca9d8496de326ed625e8a7da060bd4e54`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantb108bdd127fe07ff48745cbbe657816152ab97f6a43a8aaab1bef76d123ef4aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantb108bdd127fe07ff48745cbbe657816152ab97f6a43a8aaab1bef76d123ef4aa.lean.json)

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
| 1 | `def` | [CutExpand](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand.md) | 66 | `declaration-track:df0190709db4c5860ed4deccced17077aa5849a3bf9270986c7f67d98d868908` |
| 2 | `theorem` | [cutExpand_le_invImage_lex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-le-invimage-lex.md) | 71 | `result-track:90e20170d5a48238af8caa9dbed0b4027f90dd07aab4527646fe1a633cc96b4d` |
| 3 | `theorem` | [cutExpand_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-singleton.md) | 84 | `result-track:8d8dcba0b087bb44f2866eb8e5d88e34d14e54de69508ae59f1650700fa71bc6` |
| 4 | `theorem` | [cutExpand_singleton_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-singleton-singleton.md) | 87 | `result-track:98b15d50bb6603771b7a9ce4f1a8af44de8db3735231d4c01f6c03148edeeead` |
| 5 | `theorem` | [cutExpand_add_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-add-left.md) | 90 | `result-track:320eb901f0caf07237b5c2bc53352ba272c86afd1e46236743afcfa416c1f61a` |
| 6 | `lemma` | [cutExpand_add_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-add-right.md) | 93 | `result-track:d1886298276fd465d0a6f3b11ca624c1b62b189f9ec0374b1ec74f973586afc4` |
| 7 | `theorem` | [cutExpand_add_single](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-add-single.md) | 96 | `result-track:14796521be245cf48a97bc98465ed9fc8ecfb1069f11e73313d7ff7b1a6fb7ce` |
| 8 | `theorem` | [cutExpand_single_add](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-single-add.md) | 100 | `result-track:cd6b1c2982a4e32d4d20c718dcc90037ef7c48919ce47115387f88cac5bd0aa1` |
| 9 | `theorem` | [cutExpand_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-iff.md) | 104 | `result-track:50aaed923ffa271c2320a5b8e151cfc5e83e94999277fc78fd280e2465d1e6e6` |
| 10 | `theorem` | [not_cutExpand_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/not-cutexpand-zero.md) | 115 | `result-track:2eada375c8ac546ba8fd552b087924a74f404f74661662fad6855b1d210c7961` |
| 11 | `lemma` | [cutExpand_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-zero.md) | 120 | `result-track:a97a212177aabaaf3435f86c1e17fce923161c9e37ef2906555eadb0568c3c3c` |
| 12 | `theorem` | [cutExpand_fibration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-fibration.md) | 124 | `result-track:4bfd1813b6c9f288e9e851aebf54d0c95b34cf3473f600f0fa94a77107ca345f` |
| 13 | `lemma` | [cutExpand_closed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-closed.md) | 139 | `result-track:85e017ea482f40f52ccf51fa4de3ca8faa7f3218ef393d2718b9e079e16b6acd` |
| 14 | `lemma` | [cutExpand_double](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-double.md) | 148 | `result-track:4e05ba4543aa03211458b83933e31d236e6d68e3788ab2cd1a25a3fb3afc0eb5` |
| 15 | `lemma` | [cutExpand_pair_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-pair-left.md) | 153 | `result-track:0595934f8bd5407cfb43681276d1c2a30d655752db571180378c3814e8872cf9` |
| 16 | `lemma` | [cutExpand_pair_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-pair-right.md) | 156 | `result-track:b784e3501206edd37e79c048581538f7a3c194f8249fd6c9a5a301730a9c2d32` |
| 17 | `lemma` | [cutExpand_double_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/cutexpand-double-left.md) | 159 | `result-track:9257721eb59a59ad536648fef209608e3673da8be89292645454af3a0cbc2cb1` |
| 18 | `theorem` | [acc_of_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/acc-of-singleton.md) | 165 | `result-track:4003715f5a923e7ebf1914cad254eee931d848d7acec160795b65d689e267222` |
| 19 | `theorem` | [Hydra Namespaced Public](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cutexpand-va.md) | 176 | `result-track:b9b759eec747fbe335a152d01d18eda486125181ecea1702fc34cf399216d6e3` |
| 20 | `instance` | [Hydra Namespaced Public](../../../../../MathematicalLogicAndFoundations/GeneralLogic/HydraNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cutexpand-va-source-edition-2.md) | 187 | `declaration-track:dc17029197309b7694c927ad717e0a23c8db658fbb3e897febadfbb443728b91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc67f1b5b836d0107a9df1bf36e462c5e8a5bd03026a8d4991d450c5fbd412d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantb108bdd127fe07ff48745cbbe657816152ab97f6a43a8aaab1bef76d123ef4aa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantb108bdd127fe07ff48745cbbe657816152ab97f6a43a8aaab1bef76d123ef4aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
