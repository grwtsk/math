# Verification target: Nat Int

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "763c22c834af38214b9c92c30d3e6ec7c0400341",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NatInt/Variant93666751e9aa4203c48f133382969137f8cda9d73bbe4cea6d5c43f37acf23ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `763c22c834af38214b9c92c30d3e6ec7c0400341`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NatInt/Variant93666751e9aa4203c48f133382969137f8cda9d73bbe4cea6d5c43f37acf23ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NatInt/Variant93666751e9aa4203c48f133382969137f8cda9d73bbe4cea6d5c43f37acf23ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AddCommGroup.toNatModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/addcommgroup-tonatmodule.md) | 41 | `declaration-track:b1964ffed1143eed140a7945feb7211d6b771a52f7fa9d8c9fbaf863707f495e` |
| 2 | `instance` | [AddCommGroup.toIntModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/addcommgroup-tointmodule.md) | 55 | `declaration-track:fa82a06234af66b7aa9db11a387870af7b50deea5fc262eb06ca85859af41762` |
| 3 | `abbrev` | [Module.addCommMonoidToAddCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/module-addcommmonoidtoaddcommgroup.md) | 69 | `declaration-track:0a9ba2207abdffbf739dffa970b491977d09b76e6555e1ccf25e5b98219af25c` |
| 4 | `lemma` | [Nat.cast_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/nat-cast-smul-eq-nsmul.md) | 92 | `result-track:a38605b96a2ed643d52a00d30ff4ad31e9ebd77ea046ba5041d0550f6b53501a` |
| 5 | `lemma` | [ofNat_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/ofnat-smul-eq-nsmul.md) | 98 | `result-track:b57f223c65fa851302f8088ea547fb85dfb367e1a80719e4bfc13fc9f38eaea5` |
| 6 | `theorem` | [nat_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/nat-smul-eq-nsmul.md) | 106 | `result-track:2151ebb1731eb0546108d2a2d341242514e33e90a0cf55e9b0449bdf22da3c40` |
| 7 | `def` | [AddCommMonoid.uniqueNatModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/addcommmonoid-uniquenatmodule.md) | 111 | `declaration-track:491ef832815da5c0951dd1478f951dd3b41f5fbf08d1aacc900186e53cd52ed9` |
| 8 | `instance` | [AddCommMonoid.nat_isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/addcommmonoid-nat-isscalartower.md) | 115 | `declaration-track:c3b1762c076ffbcda04248bdaeaea8d1e50cdea6e1ace1a6082071f761c74bca` |
| 9 | `theorem` | [map_natCast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/map-natcast-smul.md) | 123 | `result-track:27c4b61f00f2996e434419a6aae1b614878fc41438cf75d7b36ae1889a95969e` |
| 10 | `theorem` | [Nat.smul_one_eq_cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/nat-smul-one-eq-cast.md) | 128 | `result-track:dab39ab6c91560064da79dc29fe4d2e6776dfc18c72166c2d2fd5009fda6bc70` |
| 11 | `theorem` | [Int.smul_one_eq_cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatInt.lean/declarations/int-smul-one-eq-cast.md) | 131 | `result-track:ac4695beb85a2b219c0fc38347aca6d7bb5c083609c56568794c261bb4a1048c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e0aa8f23b54478033397f5c2de2fbc8088eaabe784845a38c3bc9c6664a0184 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NatInt/Variant93666751e9aa4203c48f133382969137f8cda9d73bbe4cea6d5c43f37acf23ca.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/NatInt/Variant93666751e9aa4203c48f133382969137f8cda9d73bbe4cea6d5c43f37acf23ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
