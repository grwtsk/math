# Verification target: Generators Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "412d88c2574a8c795883acfb12eda1de4ce5c4f3",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `412d88c2574a8c795883acfb12eda1de4ce5c4f3`.

Source path: `GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Generators](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/algebra-generators.md) | 72 | `declaration-track:5aad8da852e3f9164aefb380b81da8c7fa2e784f1a81567af53277bdeda9aa7e` |
| 2 | `abbrev` | [Ring](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ring.md) | 93 | `declaration-track:33aac2465c1a19d16cdb7bcceb2cd3328cc3a532cef1b80e1f6ca229fdbffdb7` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/instance.md) | 95 | `declaration-track:5a4e645356782505559b0f9270214f85a5b2f07ecb8ed800ac2a482d6ada503a` |
| 4 | `def` | [σ](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/anonymous.md) | 98 | `declaration-track:d0517f2daa39fa62d8ee5ddfe65c866f81a592ba1adaa41264b8a6d2ff158ece` |
| 5 | `def` | [Simps.σ](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/simps.md) | 101 | `declaration-track:cfe6da09ddf7ca51406ae6f3e81a2b20d667be0a24cf7a1bc78daa9d7da9f16a` |
| 6 | `lemma` | [aeval_val_σ](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/aeval-val.md) | 106 | `result-track:332655ef75f4f07a0551588d987b19c8d7eecd628c52e26d01af7b45e3048b4b` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:e01662cfef369d48a13a7537b02c42f6bf238ee4fb104ecddb977e17078570fb` |
| 8 | `lemma` | [algebraMap_apply](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/algebramap-apply.md) | 113 | `result-track:660ed57d143a57e4aa74634136432d839460cd68ac9857e667ef0fda6d1aff6f` |
| 9 | `lemma` | [σ_smul](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/smul.md) | 117 | `result-track:bc81dc102281a468d45e86fbd39c716395d68ef8bb557c8921ca167f0462d4c9` |
| 10 | `lemma` | [σ_injective](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/injective.md) | 120 | `result-track:166f66f0a64478f7dabb1dd20e9a39dae4db1c37021251cdded3a417022203f0` |
| 11 | `lemma` | [aeval_val_surjective](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/aeval-val-surjective.md) | 124 | `result-track:c8fe003e67a0de7f7a5e8718dd703bd2a3a154cf506eb72947c60001869f08bf` |
| 12 | `lemma` | [algebraMap_surjective](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/algebramap-surjective.md) | 127 | `result-track:3c2c1a554a4a1cfc4ca902a6df0395c6f5c3fa298b7be4fac1d6cc7edbcf77a6` |
| 13 | `def` | [ofSurjective](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofsurjective.md) | 135 | `declaration-track:ee1a2a61ff7b7e5064cbc1f9e4e70f9e795cd712c9ac9cd46fc00d048c8c1c23` |
| 14 | `def` | [ofSurjectiveAlgebraMap](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofsurjectivealgebramap.md) | 142 | `declaration-track:26c85325d163a3976ed7e75a8bf57c1a21a70aac15ebe19a23412b68ef5e6f81` |
| 15 | `def` | [id](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/id.md) | 149 | `declaration-track:a91bf3b93dc51f4e5e2e9821b2c88b1975fd2946a3e49ad15582409ae5aaf9d7` |
| 16 | `def` | [mvPolynomial](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/mvpolynomial.md) | 157 | `declaration-track:990b68b8656ca1652669ea87e83303facfd04276c292fd72754319e480a08da2` |
| 17 | `def` | [ofAlgHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofalghom.md) | 164 | `declaration-track:1b1325f858785c4a50b15f3d3c1d32c1696500b835f584b2be514286ada7a2ef` |
| 18 | `def` | [ofSet](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofset.md) | 170 | `declaration-track:0b07cbd33d70423b0e19036ee1060aa993b1f581de051fd9a503e5df988f3bfb` |
| 19 | `def` | [self](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/self.md) | 179 | `declaration-track:43f6b86a2d91ca9a0752a09d5f2d14ee6345eb467995b5f15aa327c9cb33c943` |
| 20 | `def` | [toExtension](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/toextension.md) | 187 | `declaration-track:1593015efe6d24f054b7e87ab16262b43f2aafec400539702cd68065b72ff296` |
| 21 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofalgequiv.md) | 193 | `declaration-track:6cfcb7a3846dd117c74d76c529361bbd2f64adf1417380a2c70b4bc8c8179228` |
| 22 | `lemma` | [ofAlgEquiv_val](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofalgequiv-val.md) | 203 | `result-track:e63acc76e33c8bf87cf3c76009fa2c4c2bd60eca4fec251105272604b3f9d7a2` |
| 23 | `def` | [localizationAway](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/localizationaway.md) | 216 | `declaration-track:5a515fd72e753259c83a1542929fa23df724fa685bb4bd28b56cc76174ff1084` |
| 24 | `def` | [comp](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/comp.md) | 238 | `declaration-track:80400a3fccbf62a6e53aa49218384ed453953eb49affe342991f9b5c91958b50` |
| 25 | `def` | [extendScalars](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/extendscalars.md) | 259 | `declaration-track:296d5ca1ea2a3a14f18ab0dcc5b0774b4fe05b05a915ad33674c402cb3fac405` |
| 26 | `def` | [baseChange](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/basechange.md) | 269 | `declaration-track:2f6dfc929b898366164b5568187dd04eb1e8def14d91342a36d89a5f8c9785cb` |
| 27 | `def` | [baseChangeFromBaseChange](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/basechangefrombasechange.md) | 299 | `declaration-track:058942fa2211a13fc93a33916d0243c5daa8ea4baf2ee1488350e70b7a9d44c1` |
| 28 | `lemma` | [baseChangeFromBaseChange_apply](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/basechangefrombasechange-apply.md) | 308 | `result-track:0b31433ae653bb9e2cb332bb50cce9ece3a7ede3588144b06d3242514a3d44e8` |
| 29 | `def` | [baseChangeToBaseChange](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/basechangetobasechange.md) | 317 | `declaration-track:2ae0d5203033b1acbf1d8a71d5e8f11e006b797412c707f472d913403a3967d2` |
| 30 | `lemma` | [baseChangeToBaseChange_apply](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/basechangetobasechange-apply.md) | 326 | `result-track:1e09e95f599c78e8ba1f81aea301bb9c54359a59eda604efc15b7e5ef623cd81` |
| 31 | `def` | [extend](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/extend.md) | 332 | `declaration-track:113465ca4817ec2f1d11036dc34e0eb972f6dcb7a58fa5dba5b9d7ed64ba7f6e` |
| 32 | `lemma` | [extend_val_inl](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/extend-val-inl.md) | 338 | `result-track:e6e25373c161d2a6ba0835dff953289eba74bc5fb9c770123a3a654ec807eb63` |
| 33 | `lemma` | [extend_val_inr](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/extend-val-inr.md) | 342 | `result-track:69f93b2147c1556a576f66a403b4e2439692daee488088e2789f0d29ce0ee24b` |
| 34 | `def` | [reindex](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/reindex.md) | 347 | `declaration-track:e050bc51f4ef209919d3bbc22f9222a5804ba390797325d84860c6ff62c4597a` |
| 35 | `lemma` | [reindex_val](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/reindex-val.md) | 356 | `result-track:86ae2087df9bd37e4922df3fbfc804dcf33e43d694ca5e14ab4b3676389b59eb` |
| 36 | `def` | [naive](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/naive-source-edition-2.md) | 372 | `declaration-track:d671e9a76f32269a1e931fd24a35dabd10d92a625632cbf5d66108763cd52eb3` |
| 37 | `lemma` | [naive_σ](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/naive.md) | 384 | `result-track:9c777f121d81c1f2a9df084628e18747e92af746647ce4262405bf7269fbe0cb` |
| 38 | `lemma` | [finiteType](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/finitetype.md) | 388 | `result-track:7c54b67a0d547e27803b231dcfd6784942c4a4484df6e655232450c0751fdaf3` |
| 39 | `lemma` | [Generators Namespaced Public](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/iff-exists-generators.md) | 391 | `result-track:2e651efc285426844758fecfd6d0f1141286b0267b5f45bf6e396a5814f4c444` |
| 40 | `structure` | [Hom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom.md) | 419 | `declaration-track:4cf38e730e7064e5637ae65de69c17279a6876e56682a230517b20ba83dc3d31` |
| 41 | `def` | [Hom.toAlgHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toalghom.md) | 431 | `declaration-track:2fa9988159f8a11ba1e378383164294a7b28a76652dcf5b4d8ce66e9d2696bc1` |
| 42 | `lemma` | [Hom.algebraMap_toAlgHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-algebramap-toalghom.md) | 435 | `result-track:32a8d3d898a3d7869ac30af3543e08cced259388c95a3eb4a90cca7022f9e062` |
| 43 | `lemma` | [Hom.algebraMap_toAlgHom'](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-algebramap-toalghom-source-edition-2.md) | 445 | `result-track:53adbd8651468168ccac654590c86eb1f0e18d8df575727529c0e1b7a03d05ad` |
| 44 | `lemma` | [Hom.toAlgHom_X](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toalghom-x.md) | 451 | `result-track:ea27528ca58b5beee2c365b0bce10fff4b27295d3ec37b453ec11c420c8ecb8d` |
| 45 | `lemma` | [Hom.toAlgHom_C](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toalghom-c.md) | 454 | `result-track:9803b5b715e882c6472a5518dc2b6b120aab7dd2c89c016e27023b5afdf13f92` |
| 46 | `lemma` | [Hom.toAlgHom_monomial](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toalghom-monomial.md) | 457 | `result-track:4c30b6455a4a1453776d4637dcc88a174e97b2284add172e21e3c9bc830b52b2` |
| 47 | `def` | [Hom.equivAlgHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-equivalghom.md) | 466 | `declaration-track:bcd23a865b1cedbc0c1e2d6631a66e8dd2a50527872c4f34ee62dbbb185c0453` |
| 48 | `def` | [defaultHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/defaulthom.md) | 478 | `declaration-track:c964b33181cfadfb8a47fb80859e70e373269b7fccdc657719406747c5d33d00` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 480 | `declaration-track:7c2cfe79265e68bc0ef594c0c55556ce4cb87ccbdde7f3a2c253a70cf94fd3d8` |
| 50 | `def` | [Hom.id](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-id.md) | 484 | `declaration-track:6e7620ec18d3b91f4dfc38f050dccb7edba31a7de89a54cfcd31f925896a2ca1` |
| 51 | `lemma` | [Hom.toAlgHom_id](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toalghom-id.md) | 487 | `result-track:a848e50765c53813169dd5ab4d55c54492353de50b612b8d00b15d0d2fa8b97a` |
| 52 | `def` | [Hom.comp](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-comp.md) | 493 | `declaration-track:8fc81c6cd0d5d7cc49949901024b01c001c4ce8e40813f7cf214ef3d21e0dea1` |
| 53 | `lemma` | [Hom.comp_id](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-comp-id.md) | 504 | `result-track:94e5c8e72ccc8746afce0f598d0e3d591c2fc874e39219b2e0282f86bfd2fa55` |
| 54 | `lemma` | [Hom.id_comp](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-id-comp.md) | 510 | `result-track:c10206a6dd20653a181dc77335f868887bb3646d15a198063848d2b3c361b4d1` |
| 55 | `lemma` | [Hom.toAlgHom_comp_apply](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toalghom-comp-apply.md) | 517 | `result-track:52b967536297f564f5286fbf41ec2513298de76a8df5ddad1a68797d97dc6f13` |
| 56 | `def` | [toComp](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/tocomp.md) | 533 | `declaration-track:a93e3871873578555899653eff597bfb217ea51f23377d5568d6f2ec91e55338` |
| 57 | `lemma` | [toComp_toAlgHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/tocomp-toalghom.md) | 537 | `result-track:f2973729c1edc4b4488e2c8aa0feb29b543b3403ac80e5bda449a91d18417f0e` |
| 58 | `def` | [ofComp](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofcomp.md) | 544 | `declaration-track:9480df278dd7ca51ada0ec09d75027df8ca46f20021d03ff8ca17fe4372b19fe` |
| 59 | `lemma` | [ofComp_toAlgHom_monomial_sumElim](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofcomp-toalghom-monomial-sumelim.md) | 548 | `result-track:912ac889fd1894258ba7bba7a5ea1b177b360f0fa0e442d109d6b3c913300d20` |
| 60 | `lemma` | [toComp_toAlgHom_monomial](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/tocomp-toalghom-monomial.md) | 558 | `result-track:10e1309cadb6599a5e1c7c091dd30240fe57435a25a0eaa12c0226b05b21f184` |
| 61 | `lemma` | [toAlgHom_ofComp_rename](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/toalghom-ofcomp-rename.md) | 568 | `result-track:c2ac35f1410145f1941e4021c2ef2cd6dbace2f70ee6e4f9a26d69191066085e` |
| 62 | `lemma` | [toAlgHom_ofComp_surjective](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/toalghom-ofcomp-surjective.md) | 574 | `result-track:ecbdbfe6b42cacc242802f26b820973444e9173d729a230e2f74b24f7616cd60` |
| 63 | `def` | [toExtendScalars](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/toextendscalars.md) | 598 | `declaration-track:779bc2e70246d5f4cc1687ce18aa7afcdbece5b980a7454a9b4f6970fb8fa897` |
| 64 | `def` | [Hom.toExtensionHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toextensionhom.md) | 608 | `declaration-track:812554ef8bc47e8473f1be83ab5b3d9618d8d2c9f419ed5b87150305e2a28b4e` |
| 65 | `lemma` | [Hom.toExtensionHom_id](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toextensionhom-id.md) | 617 | `result-track:1b9c86bb7f6852250fbd7481dba7743ffe124bfe4977f30fd80654c7b577d852` |
| 66 | `lemma` | [Hom.toExtensionHom_comp](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toextensionhom-comp.md) | 622 | `result-track:9950bdcb2dc426f0f741d8f55dfc9a3b1f9c76bcff9ab97b98d96e52d9d06b1d` |
| 67 | `lemma` | [Hom.toExtensionHom_toAlgHom_apply](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/hom-toextensionhom-toalghom-apply.md) | 629 | `result-track:985d14281e5b40316ba7f43af049f1472c65112c18bb9f95208d3f1c5d37823f` |
| 68 | `abbrev` | [ker](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker.md) | 634 | `declaration-track:55f17826cf2bcf92156d37214ab197389b919af0e6334ca68f70a8121a003cf7` |
| 69 | `lemma` | [ker_eq_ker_aeval_val](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker-eq-ker-aeval-val.md) | 638 | `result-track:4a76295698737b75cb0db06c8340dd90145c18590782dd5becb2e94dfd757838` |
| 70 | `lemma` | [ker_mvPolynomial](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker-mvpolynomial.md) | 642 | `result-track:d4343a86b25ebb532613b61b639751c20550225367cc2a44dcc7cc766b266f6f` |
| 71 | `lemma` | [aeval_val_eq_zero](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/aeval-val-eq-zero.md) | 646 | `result-track:e93e7bba616e1250d7288e2e432bc1a194b6bf6c773a390a1d09fd3366363452` |
| 72 | `lemma` | [ker_naive](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker-naive.md) | 648 | `result-track:5cd691ceeb6a2b00c0d18abdaff38ff43c5724b596da5e779b426696a62ced9b` |
| 73 | `lemma` | [ker_ofAlgHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker-ofalghom.md) | 656 | `result-track:3f83b4f636c7c1c9e963eef94203ed2a0aced9aeec6402e9dedc33858e465222` |
| 74 | `lemma` | [ker_ofAlgEquiv](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker-ofalgequiv.md) | 663 | `result-track:970e44f68704144e5b687d07f90a456eddb8004c49088bdefd6e8cf40d1a78fd` |
| 75 | `lemma` | [map_toComp_ker](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/map-tocomp-ker.md) | 670 | `result-track:91b7a517ab327111c966d492a7bcd9f9450def55e941e8aca2a110109e1fcd7b` |
| 76 | `def` | [kerCompPreimage](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/kercomppreimage.md) | 745 | `declaration-track:6ff1b33ac782b91572dffd1d24963eb09261599a27da91c7b84b4e5e9cf979e4` |
| 77 | `lemma` | [ofComp_kerCompPreimage](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ofcomp-kercomppreimage.md) | 760 | `result-track:47e8e68437266ed81b617a25d16f9122d746ac71beaf0ce4e8f4e34fd5a5408a` |
| 78 | `lemma` | [map_ofComp_ker](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/map-ofcomp-ker.md) | 774 | `result-track:eead58afe373b475fb220654a8ad20e4f48e2c14a7f57252712e3d03033a2005` |
| 79 | `lemma` | [ker_comp_eq_sup](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/ker-comp-eq-sup.md) | 786 | `result-track:4be7d3313939233d74fbccb2fcdcef55bb0f518e8c6f54b38a8d99a2dd9c7935` |
| 80 | `lemma` | [toAlgHom_ofComp_localizationAway](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/toalghom-ofcomp-localizationaway.md) | 800 | `result-track:4bca5f327eb1ea8496e24804ba9af9ae22d64c3eeb785df020155062c34bb932` |
| 81 | `def` | [defaultHom](../../../../CommutativeAlgebra/GeneratorsNamespacedPublic.lean/declarations/defaulthom-source-edition-2.md) | 817 | `declaration-track:e9f97fafe4f5a5d007f929a30673a7b9f22163f095aaae94b6946cac4bdb94c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=411789b42d635589c21ab4aa45874dff78e466a2168def6d516ad69344ebbe1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean","GRWTSK/_verification/specifications/Algebra/Generators/Variante89c3ee9dbf75c86adac7b5f2bccbb03d25981d2fd2c93d73b9309db01caa87e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
