# Verification target: Module Synonym Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "461c1f8c6c46f9be4435af9b92b99d86114cb0c8",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant83c230f6b586c081a2f91b9a94b373d7b0e7782c2d6b58c52c2756773af93092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `461c1f8c6c46f9be4435af9b92b99d86114cb0c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant83c230f6b586c081a2f91b9a94b373d7b0e7782c2d6b58c52c2756773af93092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant83c230f6b586c081a2f91b9a94b373d7b0e7782c2d6b58c52c2756773af93092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithCStarModule](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/withcstarmodule.md) | 63 | `declaration-track:9a263d24a4749e9f19acfc18510036f5bad0b2560c39cd68799f2a101ed03b52` |
| 2 | `def` | [equiv](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv.md) | 76 | `declaration-track:e265665ba484ff309a2c3b728464765fcce2a2065e6bfc65d578cf5c0300adc1` |
| 3 | `instance` | [instNontrivial](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instnontrivial.md) | 78 | `declaration-track:0099e2b3f5eb6a0538e9a60e8d9cf46e907fba030ca87645626ea5016437a409` |
| 4 | `instance` | [instInhabited](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instinhabited.md) | 79 | `declaration-track:3e953908ba9da18e41e539d05f95edc4e91942141982f0c0b3def5416534fd68` |
| 5 | `instance` | [instNonempty](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instnonempty.md) | 80 | `declaration-track:9c796956a14c96650922416c3cc8f08a7af95f0d8e23c51d4e3e70b6db095437` |
| 6 | `instance` | [instUnique](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instunique.md) | 81 | `declaration-track:44a14765d069f8cfc7496c294da2348a2ef6393cc6b083b2b53236b480433715` |
| 7 | `instance` | [instZero](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instzero.md) | 85 | `declaration-track:3162c6d001a38a0c8573c62cf7c9a217492bab806367d4edfaa05c4e68d65922` |
| 8 | `instance` | [instAdd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instadd.md) | 86 | `declaration-track:2e28d9399bd61f1c6a2f2d22ec7604d26286dbf3b7e4dca6b205ccc2210f8f57` |
| 9 | `instance` | [instSub](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instsub.md) | 87 | `declaration-track:3bda92d6ce8d03018fbc4c59f6848181508575b4ca097d5e9c69412924bfc2c7` |
| 10 | `instance` | [instNeg](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instneg.md) | 88 | `declaration-track:1ae1a6901d41fdcc6b452355fe030359b028088c5b9cb48c1eec4d4cb0260419` |
| 11 | `instance` | [instAddMonoid](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instaddmonoid.md) | 89 | `declaration-track:230d64002f115c30f212fbc36b4e44d84128c569d36355aea67f7befe22fb25e` |
| 12 | `instance` | [instSubNegMonoid](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instsubnegmonoid.md) | 90 | `declaration-track:46fffc027ad605add149fecc1d53bff633f018d071f36cec9d033363c55c2d7c` |
| 13 | `instance` | [instSubNegZeroMonoid](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instsubnegzeromonoid.md) | 91 | `declaration-track:ad234dc4605a7b4269687d30f23346d5af4af2f64caab2b539d52d3efad1c67e` |
| 14 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instaddcommgroup.md) | 94 | `declaration-track:724c76958c297b48b1d2b2ac9f38ef6d277e8312b21df418bbaa454ec27d9119` |
| 15 | `instance` | [instSMul](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instsmul.md) | 96 | `declaration-track:0e1e8ef607a8b3e4d692c1a332fb005a6d3342b98d01707cf42b35f86a7caec3` |
| 16 | `instance` | [instModule](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instmodule.md) | 98 | `declaration-track:0aa7eb3c56d7190710d992648fe0f0baf4aa4d2582e80739810882060ea4498b` |
| 17 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instisscalartower.md) | 102 | `declaration-track:b2b43df977d8e54a8276305a1c5a81656db902d764638ae5d29bc82c87e0fbc9` |
| 18 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instsmulcommclass.md) | 106 | `declaration-track:f5d5b67e01cf2a54064ca76db42e04929dc40862c04d047933edda9b71ece994` |
| 19 | `theorem` | [equiv_zero](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-zero.md) | 122 | `result-track:896021b51ab53d556dc3cfadebb2d39ecef2f1f7537b385e40ad38f65bf75f99` |
| 20 | `theorem` | [equiv_symm_zero](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-zero.md) | 126 | `result-track:ac0b6e41d038a271aa22f8b60f2f9fcf5bc9c842fe9bc5cd92736d3608f248f5` |
| 21 | `theorem` | [equiv_add](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-add.md) | 130 | `result-track:4f61f673e24ce7531c8e12545838b684d4d0339540995c9608b6981caef3e03d` |
| 22 | `theorem` | [equiv_symm_add](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-add.md) | 134 | `result-track:af387639f4d914968d6cf653111a2d33192fcd0ef2eda32dad2aac2cf635d5aa` |
| 23 | `theorem` | [equiv_sub](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-sub.md) | 139 | `result-track:c220708375ed45cf3e0134c86c08d3f7ba85d0ff419f741979f70d1ed78973d6` |
| 24 | `theorem` | [equiv_symm_sub](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-sub.md) | 143 | `result-track:b69d7561dc76551d624cad24c4982fb52663275c0be3449c039f4e587f74b0ac` |
| 25 | `theorem` | [equiv_neg](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-neg.md) | 148 | `result-track:249a1c3fb982ef067e9336906766cca3270a2475bbe56caa25698d657d0efd53` |
| 26 | `theorem` | [equiv_symm_neg](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-neg.md) | 152 | `result-track:cc4c8853703257b5b16039ec457840bcb754f0485e72c76166a6384417bc5ba3` |
| 27 | `theorem` | [equiv_smul](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-smul.md) | 158 | `result-track:74c61d3489cb02b3621f522ff24454df9644e184b7ad8c7cf66ecdb8db9a9488` |
| 28 | `theorem` | [equiv_symm_smul](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-smul.md) | 162 | `result-track:27da00048d191bcb79b5aa5725d278ffafd3cc5ad505cfa6eb4f7bf230b64397` |
| 29 | `def` | [addEquiv](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/addequiv.md) | 168 | `declaration-track:f698bea2dc2e639868b67fdb2f428661b60a2df1aeaafe8c4679a5dc1375b89b` |
| 30 | `def` | [linearEquiv](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/linearequiv.md) | 175 | `declaration-track:4dbf7126c4f76dc5b71f605e2e5a25ba89d8a398cb1c871a9817285a2e2f3a8e` |
| 31 | `lemma` | [map_top_submodule](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/map-top-submodule.md) | 180 | `result-track:859bdf93631e01691e368bbacca0424e86f74108e8df6ff64c1a06686063299b` |
| 32 | `instance` | [instModuleFinite](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instmodulefinite.md) | 187 | `declaration-track:347aeee689106202db4c4e7c8a627d4e6f9b76acb97d519994ea64f7884eb831` |
| 33 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance-source-edition-7.md) | 194 | `declaration-track:da386e97801ec0175e3cd121d73364d020df598573dfef1e54ad9ebe950d0f34` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance-source-edition-6.md) | 196 | `declaration-track:d3ed93bb37871ce029da49f1d353a51067b990dbf068406e69a567b62f9abb40` |
| 35 | `def` | [uniformEquiv](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/uniformequiv.md) | 200 | `declaration-track:91b22940812c119d1c34384a0082ed06192f95095abd39dfd2d0321705973441` |
| 36 | `def` | [equivL](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equivl.md) | 205 | `declaration-track:2c52db9583e06c64459612bac048d0ee6d461b5a966ae27868f634eaa450ef0d` |
| 37 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance-source-edition-5.md) | 210 | `declaration-track:b12e58752dca8f969ca62df940fa363b0e9e3a048bfd710808420f3a13908eef` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance.md) | 213 | `declaration-track:3e6f63e2aa65cf91fff09b1314823f1a69429747cf7ce3e90442dec254700779` |
| 39 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance-source-edition-4.md) | 216 | `declaration-track:9f8cfed6d82353179723372f96addbb767059f9db91962b3f8655a55ebf1e10e` |
| 40 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance-source-edition-3.md) | 219 | `declaration-track:53b156aa8b4cb747776f50710483efe4d55e82090aae77783dd6aa35d54fba79` |
| 41 | `theorem` | [zero_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/zero-fst.md) | 241 | `result-track:997773af75532d1e8337fbe8810d259de86fd2ed6817c0f58e82a705db058282` |
| 42 | `theorem` | [zero_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/zero-snd.md) | 245 | `result-track:e2b0342d58b411beae03e1ab7e59e71c88a31df9a012ceb4cc838035d3c36921` |
| 43 | `theorem` | [add_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/add-fst.md) | 249 | `result-track:b32216ddb532e3d0a320f89d22339bed023398e0c9fa78a1aec37f211bab2a06` |
| 44 | `theorem` | [add_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/add-snd.md) | 253 | `result-track:1c71070f70c4147dc3d9fb288bf28f3bc64b36013a212f12671454890fb00412` |
| 45 | `theorem` | [sub_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/sub-fst.md) | 257 | `result-track:c6b6139f2106694ee16d82dacbc4fa81dc1d5e16308b1ab03257e6cbf884445f` |
| 46 | `theorem` | [sub_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/sub-snd.md) | 261 | `result-track:edf024bd449571ce8c4595ac6a0e007cec573cb595445e21234e3dcd8aced6c5` |
| 47 | `theorem` | [neg_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/neg-fst.md) | 265 | `result-track:8dbb1a7a8ba8fcf0a5e161c9d729e4e8fcb66c16e6e41f3d231624119ef71cf2` |
| 48 | `theorem` | [neg_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/neg-snd.md) | 269 | `result-track:5be66f17d0eb802a1687653e846ab7f0ee5203caccd8fd97839c945dca1bfab7` |
| 49 | `theorem` | [smul_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/smul-fst.md) | 275 | `result-track:a69102439349efe40f1769cf8a775190b814c15b39a5b022acd929888c84774c` |
| 50 | `theorem` | [smul_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/smul-snd.md) | 279 | `result-track:61e29325b5572773f41534953843af9fb2bfd8e83c210143026c23052c5de6ec` |
| 51 | `theorem` | [equiv_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-fst.md) | 286 | `result-track:70ee18add9b100a49410eba334e0654c4683050fe5adbd60ebd357da6467f596` |
| 52 | `theorem` | [equiv_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-snd.md) | 290 | `result-track:25f0bb120fd4d90c1ce1dd67816cd53c9a1538e9b2684da6ad75db825138a77d` |
| 53 | `theorem` | [equiv_symm_fst](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-fst.md) | 294 | `result-track:c063357b01a807f1a1bd41980055b9ed0b3f10bdf71f8e7cab8521e76561da16` |
| 54 | `theorem` | [equiv_symm_snd](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-snd.md) | 298 | `result-track:128ac85a60a0a6aea0191d1fcf1f862ae4c66a617240040cf71c5be31e77bdc9` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/instance-source-edition-2.md) | 314 | `declaration-track:474e08b97e1d9a61332556396c536f6c060c65c5148b9ac35d64e8cbe2ac3082` |
| 56 | `theorem` | [ext](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/ext.md) | 318 | `result-track:edd9d2ef98427a0d493d261455323c3c9a39dc0b35129e2cce7659065b5fb0ef` |
| 57 | `theorem` | [zero_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/zero-apply.md) | 331 | `result-track:900493e8337c8e949f326002502774d82a65b7c86cb6edfb37e4d849f4db257e` |
| 58 | `theorem` | [add_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/add-apply.md) | 335 | `result-track:4e09189b2e03cee36f5669facce0b62b0d43600e44a8844d33cc0de7e417baf7` |
| 59 | `theorem` | [sub_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/sub-apply.md) | 339 | `result-track:8ac30c13292ffcd3b2aac204055c99ab317dc559e09d8f35d48479383e2f7c96` |
| 60 | `theorem` | [neg_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/neg-apply.md) | 343 | `result-track:17e90ae0226c31cf86372d2a296ea52eb3d7402b6c814fee4f64283fa9fc20d0` |
| 61 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/smul-apply.md) | 349 | `result-track:1d1615364dad4a3414be39bf5fabbb7b03a29e862e2debe4147cfb35809e9168` |
| 62 | `theorem` | [equiv_pi_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-pi-apply.md) | 356 | `result-track:8ea6c048c32355e7706f1c260146e5dafa205d8b98fa5042342297d1e022387e` |
| 63 | `theorem` | [equiv_symm_pi_apply](../../../../FunctionalAnalysis/ModuleSynonymNamespaced.lean/declarations/equiv-symm-pi-apply.md) | 360 | `result-track:3053be1da8263919b3879f37d0574fdc26a1d9cb088209180813583bd56ed36a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfda3b1023bab6486420bc8f12a50a7e8a87a40d4013947cdcdfa9c4b13be768 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant83c230f6b586c081a2f91b9a94b373d7b0e7782c2d6b58c52c2756773af93092.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant83c230f6b586c081a2f91b9a94b373d7b0e7782c2d6b58c52c2756773af93092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
