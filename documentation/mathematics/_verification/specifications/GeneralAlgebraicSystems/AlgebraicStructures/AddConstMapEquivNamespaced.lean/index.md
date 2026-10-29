# Verification target: Add Const Map Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "887b05996098695ad6e475a279bc6169466a9ee4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `887b05996098695ad6e475a279bc6169466a9ee4`.

Source path: `GRWTSK/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.AddConstMap.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/addconstequiv.md) | 32 | `declaration-track:833c1872bb7bf446a6942da152aff204a66da6943ec355219e112d9f0b9fa424` |
| 2 | `lemma` | [toEquiv_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/toequiv-injective.md) | 48 | `result-track:3125a0423a73811f1d196fdb88a4ddfc33d6c54f3cf706b7b5e5ae399eb2f247` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:514d9ed14ac7b496df26cb779b4d8344237e107894797e59b9086ccc48133209` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instance.md) | 59 | `declaration-track:4e9c22a3694091b78c565ffda302fb6e860bbc6a0801c1244795fdb201a08e48` |
| 5 | `lemma` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/ext.md) | 63 | `result-track:f50989ef21311db5c6adb6b7ad4c31c99b14dc293b324384b3e702999238b52f` |
| 6 | `lemma` | [toEquiv_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/toequiv-inj.md) | 66 | `result-track:8522c63715c8d8ae5c007157fdbd024733f4b9609e05d6efbc006d34b6662f77` |
| 7 | `lemma` | [coe_toEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/coe-toequiv.md) | 69 | `result-track:0c200ebd0d29688ba38e9b5e876644bb5d6efbf250dc4fcd59c35b9bd01cfe0b` |
| 8 | `def` | [symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/symm.md) | 72 | `declaration-track:fb66537297b9925f825b0915ab57695e61b24cc80f4a07778ad306ace1e85041` |
| 9 | `def` | [Simps.symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/simps-symm-apply.md) | 77 | `declaration-track:541158d65f2789f69593f601382fcad54cd3b96f9f147bc3f97b76f5466cfe2b` |
| 10 | `lemma` | [symm_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/symm-symm.md) | 81 | `result-track:1517ed4486dffb17bb2a5ac1fdd52e3910964bffc19ad9defcf40fd12f1d4339` |
| 11 | `def` | [refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/refl.md) | 85 | `declaration-track:b44839395770ceb9aad3057d9bb64b3aee04ba028313237071b03a4153499533` |
| 12 | `lemma` | [symm_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/symm-refl.md) | 89 | `result-track:288a89dc608660ea2b16979520e7a477711afc519363f193bfdcf54a77ec07d0` |
| 13 | `def` | [trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/trans.md) | 93 | `declaration-track:57b91583c197e35b28bd2bec4bab1fed84b3fd7ec26aace3f14b80ccf8aa2756` |
| 14 | `lemma` | [trans_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/trans-refl.md) | 97 | `result-track:971e777a8b68a24ae8b27de78c26872cbf3b17ab1d6583b1932c29c00ea1b996` |
| 15 | `lemma` | [refl_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/refl-trans.md) | 98 | `result-track:c5891c4d10206de8418632e479c886bebddeb8c938f049caa982c094364356ad` |
| 16 | `lemma` | [self_trans_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/self-trans-symm.md) | 101 | `result-track:fa997321fda54375b0727b78ff33b2fe6b2b369fce113ff1f8ed3e37960162d1` |
| 17 | `lemma` | [symm_trans_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/symm-trans-self.md) | 105 | `result-track:ed644e59f5def8fd4b12377d23b5459d34f8b6f5bec0277f5ebe6646aa70de0d` |
| 18 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instone.md) | 108 | `declaration-track:980d309cc2e44378c101e98a6a3e1b9c61e53a476d9babfbba03006019c33f2c` |
| 19 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instmul.md) | 109 | `declaration-track:de14f41edb4fb1879591533f2b87e423801382d5d5a4b8a10ccd66a95791298e` |
| 20 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instinv.md) | 110 | `declaration-track:5d067e08cc11cd4769a05de495365b8e642ee2a1105589edc10ff76247389a52` |
| 21 | `instance` | [instDiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instdiv.md) | 111 | `declaration-track:d046074bfc7e7409802005c8bfd1c5e6de0f48d5c473efb0b5fd1033e031c665` |
| 22 | `instance` | [instPowNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instpownat.md) | 113 | `declaration-track:b137d8d52ae1d5be4b7d67c92725a512bdba3ca2b1876bfd298dd96f3642fa50` |
| 23 | `instance` | [instPowInt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instpowint.md) | 116 | `declaration-track:5138c4b6dc4babffbcb904a8da21780ee7deeebff71fecf0462d142c12a4c37e` |
| 24 | `instance` | [instGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/instgroup.md) | 122 | `declaration-track:53c330499677e3753c711ee54e07a8c23ff9d869782a775a5dceb5b3cf91886d` |
| 25 | `def` | [toPerm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/toperm.md) | 128 | `declaration-track:25a84c9a60ede5ab098e87cf8774b8b3eba0ca4a356ac3cc071857f14141fa42` |
| 26 | `def` | [toAddConstMapHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/toaddconstmaphom.md) | 133 | `declaration-track:1986d3c6802fd1b50ccd4534f897937ca5ccc259a4d814a57394b951321c3579` |
| 27 | `def` | [equivUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AddConstMapEquivNamespaced.lean/declarations/equivunits.md) | 140 | `declaration-track:066cc2da160d6795d727b875976b34fed809d2cd812cab99379ed5ba15cb8622` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26ddd6625f7333bf484ba7f578e1045d3e3d74b393be407fc688310cd1ecf4cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean","GRWTSK/_verification/specifications/Algebra/Equiv/Variant25136a5961947103dae933ba8b078a81f2a5e3f071e96e921f2c80bcbe43cdde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
