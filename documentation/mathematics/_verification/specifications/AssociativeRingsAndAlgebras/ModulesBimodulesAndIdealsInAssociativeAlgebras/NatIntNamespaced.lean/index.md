# Verification target: Nat Int Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf8446124d8ff16cab5d030b9c36d2f2af95d5a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NatInt/Variant9f25d14a5096040deaae5c205e203a626127c712d15690453cf4ae4ef2612c04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf8446124d8ff16cab5d030b9c36d2f2af95d5a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NatInt/Variant9f25d14a5096040deaae5c205e203a626127c712d15690453cf4ae4ef2612c04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NatInt/Variant9f25d14a5096040deaae5c205e203a626127c712d15690453cf4ae4ef2612c04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AddCommGroup.toNatModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/addcommgroup-tonatmodule.md) | 49 | `declaration-track:9d36e035f142d6c612edd46b2f3be77fec81f33864b331bd2b7ccd5ffb0228cb` |
| 2 | `instance` | [AddCommGroup.toIntModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/addcommgroup-tointmodule.md) | 63 | `declaration-track:3f3601ab4a9e0a14ce49d3536beb39a310cfdf43e12629112e9aa8b056d42426` |
| 3 | `abbrev` | [Module.addCommMonoidToAddCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/module-addcommmonoidtoaddcommgroup.md) | 77 | `declaration-track:da6ae421c0f894be18b5f77883b1789010f0822b61aefb2869427bd68880a4f2` |
| 4 | `lemma` | [Nat.cast_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/nat-cast-smul-eq-nsmul.md) | 100 | `result-track:1a2a3261d65b1b5d04aa34d23b9334c63006e58fa4acfb0b2492f1a83fc23eb0` |
| 5 | `lemma` | [ofNat_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/ofnat-smul-eq-nsmul.md) | 106 | `result-track:68a7240db8c2b256eb187a0e08c94ee72da7094073b04740943966c0d4f53b27` |
| 6 | `theorem` | [nat_smul_eq_nsmul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/nat-smul-eq-nsmul.md) | 114 | `result-track:662a952febc9207df7886891eeb0ad4456f92dc2e1f0cb57d67621fb5a46bc2a` |
| 7 | `def` | [AddCommMonoid.uniqueNatModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/addcommmonoid-uniquenatmodule.md) | 119 | `declaration-track:3102a898d324a5fc1246a1a26cc1db885e91fb3c09f717c467fb837a2ccfb797` |
| 8 | `instance` | [AddCommMonoid.nat_isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/addcommmonoid-nat-isscalartower.md) | 123 | `declaration-track:ff226bac258b3c8feba1a5c76619ed79552f01e9085da29e49ba1d923063d09a` |
| 9 | `theorem` | [map_natCast_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/map-natcast-smul.md) | 131 | `result-track:b2b927b95b3ef6d8dec4967feeb13f3cc92fecc6dd51ae0dc45f321e10e312e9` |
| 10 | `theorem` | [Nat.smul_one_eq_cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/nat-smul-one-eq-cast.md) | 136 | `result-track:6e04f689ce0c90b008526d1cb66a96338f3a0ed09ba27ec2879d4f62cd57d3b1` |
| 11 | `theorem` | [Int.smul_one_eq_cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/NatIntNamespaced.lean/declarations/int-smul-one-eq-cast.md) | 139 | `result-track:84547e3438ff3418e7c6e2c42a39e7cb66ffbc4ce839470efce888774481f695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d783357f8dc589613a7a8041c0a859f5ad6f1bfe0917a935124786d7c9257b8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NatInt/Variant9f25d14a5096040deaae5c205e203a626127c712d15690453cf4ae4ef2612c04.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/NatInt/Variant9f25d14a5096040deaae5c205e203a626127c712d15690453cf4ae4ef2612c04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
