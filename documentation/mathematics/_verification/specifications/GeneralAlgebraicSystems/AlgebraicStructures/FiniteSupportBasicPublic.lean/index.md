# Verification target: Finite Support Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "616bc499cbce3ca6810a89517267eb41d4fe7f5e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `616bc499cbce3ca6810a89517267eb41d4fe7f5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Indicator` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasFiniteMulSupport_fun_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-fun-one.md) | 33 | `result-track:72fd62a902b5e0658c2d784a91aaeb04b18c98fa439fb5f241d8c9ae47892ef6` |
| 2 | `lemma` | [HasFiniteMulSupport.fun_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-fun-comp.md) | 37 | `result-track:de32c55ba8b4d1e76f85b0d4f0ee50dd5c15d1097460600f4fe018f19c69f20b` |
| 3 | `lemma` | [HasFiniteMulSupport.comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-comp.md) | 43 | `result-track:0b5560e5571366a219dc67f1eb73420bc7a59f75533ec4274ecc0598acaf3135` |
| 4 | `lemma` | [HasFiniteMulSupport.fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-fst.md) | 49 | `result-track:e580eab29f6811fd5d21aa96132dad0b3afb0cff090ad114d4bf8df6ae3947b3` |
| 5 | `lemma` | [HasFiniteMulSupport.snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-snd.md) | 54 | `result-track:9ad28f039eeadab70ef0c003769d2be469ee1fa815504f0db89085ee959b6858` |
| 6 | `lemma` | [HasFiniteMulSupport.prodMk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-prodmk.md) | 59 | `result-track:db7a443157392ca36f07165af020ec10d4e0662d0b7427f84391a83420f25af0` |
| 7 | `lemma` | [HasFiniteMulSupport.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-mul.md) | 67 | `result-track:7cb254b15fd5673450c10d412b1d20f2f3b7c84c9f17a8fb587e51624f178805` |
| 8 | `lemma` | [HasFiniteMulSupport.inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-inv.md) | 73 | `result-track:33b976f73ea46cd7d16a86d6675b04b07037028aa89d8c0d3831312fb974983b` |
| 9 | `lemma` | [HasFiniteMulSupport.prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-prod.md) | 79 | `result-track:54b5698c80c2c5dbead9bfc74d03f51afc41c96effef8ebbde2c8e6437141858` |
| 10 | `lemma` | [HasFiniteMulSupport.div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-div.md) | 85 | `result-track:af28afb9da20ca530e808858ad0dabd452701e7fc944fe57d3062628e968946f` |
| 11 | `lemma` | [HasFiniteMulSupport.pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-pow.md) | 91 | `result-track:ff85fb5e97e26da034d4d8a662d99b52082ec5c5b6b2a18a54a06f5095b42689` |
| 12 | `lemma` | [HasFiniteMulSupport.zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-zpow.md) | 97 | `result-track:7ff2c1da942b9861cc28cd9cf499455af5f211a071090cdd364941f048a1d9f5` |
| 13 | `lemma` | [HasFiniteMulSupport.max](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-max.md) | 103 | `result-track:1b876fbcf9067072f91b87f90ffb83e7c7d0269a97de895b0306441732797985` |
| 14 | `lemma` | [HasFiniteMulSupport.min](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-min.md) | 109 | `result-track:f132abc49bb0d73595aa54a6e6452521eceae81d5407626bb3fc52c4c9443b6e` |
| 15 | `lemma` | [HasFiniteMulSupport.sup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-sup.md) | 115 | `result-track:38ad25c9bcfac7f9d0bfeb221ac7ac148055f706af863158a719e83bb567fdea` |
| 16 | `lemma` | [HasFiniteMulSupport.inf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-inf.md) | 121 | `result-track:142e5525f244e459b4cd61376b8b461b8087a26777a49920a244df80a293424a` |
| 17 | `lemma` | [HasFiniteMulSupport.iSup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-isup.md) | 127 | `result-track:6d8e9a7d8c5dd32c9aee162fa667f55bbd78dc385e8c4a20e8a4d6e19dc924f9` |
| 18 | `lemma` | [HasFiniteMulSupport.iInf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-iinf.md) | 133 | `result-track:f24b8de1f81a8ec12916b80e6d61d1968bc48831e791861ec622fdf872f50c5c` |
| 19 | `lemma` | [HasFiniteMulSupport.pi](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-pi.md) | 139 | `result-track:d3226e15179d2bf9dcd60c6425b0e356deb4e86e492d1f791628c75dc1b958ec` |
| 20 | `lemma` | [HasFiniteMulSupport.sup'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-sup-source-edition-2.md) | 148 | `result-track:9794b4bb06bd8a733942a15a765b2f294d874639168b46c08a72fdd728eca45d` |
| 21 | `lemma` | [HasFiniteMulSupport.inf'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-inf-source-edition-2.md) | 158 | `result-track:2c83dcb0515701d8e181740cb5cd11df497e386801d65f141bec2e0785b3059f` |
| 22 | `lemma` | [HasFiniteMulSupport.comp_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-comp-of-injective.md) | 170 | `result-track:21a27d1f15990cb2a65d21740ea2e862db0be16c0311faf199d75a2d34327f33` |
| 23 | `lemma` | [HasFiniteMulSupport.fun_comp_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-fun-comp-of-injective.md) | 176 | `result-track:232b7417780f9aa168d1b4e0237ff07e17fd1dc64297b20111e39033346bbfa9` |
| 24 | `lemma` | [HasFiniteMulSupport.of_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-of-comp.md) | 181 | `result-track:68158da21361f04c5755331fc831907d695a4f5aed2a0d4d8aff782c50ef4925` |
| 25 | `lemma` | [HasFiniteSupport.hasFiniteMulSupport_fun_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitesupport-hasfinitemulsupport-fun-pow.md) | 189 | `result-track:85a863374520c7f9d46eab3406e617e1f5e915f998c3ffd961f39e49e3209329` |
| 26 | `lemma` | [HasFiniteMulSupport.of_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitemulsupport-of-eq-one-iff.md) | 195 | `result-track:a9a5682223ca32eecd49f841d50932c7944cb720425692c20cf68d15777e0c0f` |
| 27 | `lemma` | [HasFiniteSupport.mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitesupport-mul-left.md) | 205 | `result-track:deeeec1beb7e3f5f446df0001932808536e76754200e77e8f713b4999c60ff5d` |
| 28 | `lemma` | [HasFiniteSupport.mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/hasfinitesupport-mul-right.md) | 210 | `result-track:0bb20743725efa5bd90df444e5d0adbab715e8befc1e2e7ec87bff9f5944594b` |
| 29 | `lemma` | [Multiset.hasFiniteSupport_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/multiset-hasfinitesupport-count.md) | 219 | `result-track:7e4706ea31445dd6ba3c08cb21e0351b2c55497ec60558e7e199a815c5bbb00d` |
| 30 | `lemma` | [smul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/smul-left.md) | 232 | `result-track:7d09f6b947adbbebd21a05d1c978602155d27df462db0596b4ec122ad9e80f23` |
| 31 | `lemma` | [smul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FiniteSupportBasicPublic.lean/declarations/smul-right.md) | 237 | `result-track:4e0d792448806f30e98f0e94528be1659d2d7ffd9e43538d8a391dd838bed8d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d72c5d1d4a6a592166ae874af581867a9528520f729080fc7dfd0e1f1de11fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantb15ccab05db838057a450b0e5b38f89e2275d1efa1e5333248034ac23bca4cee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
