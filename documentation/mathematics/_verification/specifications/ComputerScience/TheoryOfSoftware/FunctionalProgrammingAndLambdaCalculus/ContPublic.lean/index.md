# Verification target: Cont Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6409d9bddc089612fb1f4d436d946ba216d3f28",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6409d9bddc089612fb1f4d436d946ba216d3f28`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonadCont.Label](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/monadcont-label.md) | 28 | `declaration-track:994647a93202c12319e21bcfac5e846083ef0cbe1ee1de1a2e538d39c21f409b` |
| 2 | `abbrev` | [MonadCont.goto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/monadcont-goto.md) | 31 | `declaration-track:63cfd00cb6e6acb2ff4e453853bcf9ed4023b229f78b30b735a235582da13ee8` |
| 3 | `class` | [MonadCont](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/monadcont.md) | 34 | `declaration-track:304a8df66bacd0963138be70b922f56f4f7fb6f1cb7d58beb334c2ab936b289b` |
| 4 | `class` | [LawfulMonadCont](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/lawfulmonadcont.md) | 39 | `declaration-track:121a5f4cd01f17926bf23166bab0f285b720350c6b0cab7ce1f16d167f40200f` |
| 5 | `def` | [ContT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/contt.md) | 49 | `declaration-track:217b1ec013b53f45472afe361cd5b09b8ad54d897e608f6fec44647f7baf16c1` |
| 6 | `abbrev` | [Cont](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/cont.md) | 52 | `declaration-track:c8fbc233ebbf4b519fd0bf2e6930eab2f6cbb57ea16b30c2dbb99aeb217f6483` |
| 7 | `def` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/mk.md) | 62 | `declaration-track:cc247065ae0a01273beaf5c72d79bf3297b162701446ca04d77f6f99c3cec284` |
| 8 | `def` | [run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run.md) | 65 | `declaration-track:c9c4ee5a2ccf62f45f8add9631195541c1d72ba9b017e61899c36b5c5080ac13` |
| 9 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/map.md) | 67 | `declaration-track:71df297c90796ef005f0080624a0e4ec6bb2a1bd679e27c957c0d3f9568eda86` |
| 10 | `theorem` | [run_contT_map_contT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-contt-map-contt.md) | 70 | `result-track:da3787283a67a9b10053d1bd6d9980dce1acd2bd9f1c32e0597630fc7179358c` |
| 11 | `def` | [withContT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/withcontt.md) | 73 | `declaration-track:7a12b2ca840431c23ecc57788d827407ba52f4dc2679593f6c9b87dd485d38ee` |
| 12 | `theorem` | [run_withContT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-withcontt.md) | 75 | `result-track:a3cc96aba9992d08e20b183499da8255daf8dd6572c207c090e74291f26699cf` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/ext.md) | 80 | `result-track:cc7b667d72bf7b4ebb46e005cc0554fb5d8ad532240df9bafc3d5c7ca389b1f4` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-7.md) | 83 | `declaration-track:953a6131a6948c6e945f289ff220410c664c4deb67d95975a510a9a11251151e` |
| 15 | `theorem` | [run_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-mk.md) | 88 | `result-track:27672c0ec4646684ebbde94a6c549dbcdf6ad55617fc961b00cdd85110024dad` |
| 16 | `theorem` | [run_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-pure.md) | 91 | `result-track:6f0ef720d02db9ac31282e75ed8291bfb2a91765f68ad66fec143c16a7f43b71` |
| 17 | `theorem` | [run_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-bind.md) | 94 | `result-track:8d142258bb82a89a9ab964fc8e2fac4452aeee41177f6220d1311f2e338dbf59` |
| 18 | `theorem` | [run_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-map.md) | 98 | `result-track:145a91c40484c2450349aa4ec1f6a15a2289c07e960076f1a9af7ed122cb9794` |
| 19 | `theorem` | [run_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-seq.md) | 102 | `result-track:b0897a4ebf4cb1c5eb673a4293509a1d74fabc30d1fde24d8dd7cefe32655c7b` |
| 20 | `theorem` | [run_seqLeft](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-seqleft.md) | 106 | `result-track:bbfd68b9b9dc4c7a9b35f8aa653eb9ae32e5d16bc86b89c83f7f25c8e1c57723` |
| 21 | `theorem` | [run_seqRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-seqright.md) | 110 | `result-track:c47544c82e02d3bc87a3bfbb6481004b50c3aef3f39630c8b6c49faf1115a25e` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-3.md) | 113 | `declaration-track:4b8d2b6e250d394aa7bc3565976fad77e32c69205ec54df9cec0430ed8f8d72c` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:6b4b8acb9520a1f7f87150c44d426edba0c9ca6c7da1e43f7fc34ca81ca495cd` |
| 24 | `theorem` | [run_monadLift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-monadlift.md) | 122 | `result-track:f541efe4728f6eeb383ed70c783b4f2b37ebd0bc1372394b7cf4abaf7c8d4b35` |
| 25 | `theorem` | [monadLift_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/monadlift-bind.md) | 125 | `result-track:615c9812442bce542c20d66379cd5d40005e062db932dc25e87387be54ee3d04` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-10.md) | 130 | `declaration-track:c283ccd0c33d84d78bd56eea60e6427f77d373fe27f59b83fab400d1e3ebf86f` |
| 27 | `theorem` | [run_callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-callcc.md) | 134 | `result-track:268d38aae0e15d1f5bd959727cbccf9d74e481d9310b128ed7598119a6925f7f` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-14.md) | 137 | `declaration-track:dbb1c46d8680ce45e1ad61cb8de6a753b10ecb07f3b169d6b6feacd31d1b4588` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-4.md) | 157 | `declaration-track:5279e180b87f5f5768e88b820512801b503caa88d9a6ee36f4beb6dcb3f19611` |
| 30 | `theorem` | [run_throw](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-throw.md) | 162 | `result-track:ba2c07002bbb1b15d654e5d647140f75bf7458afb7d0398ca558ded25e003793` |
| 31 | `theorem` | [run_tryCatch](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-trycatch.md) | 167 | `result-track:b9806d89534771f02d2afa2d92825e42138dbae0b3be5acba8e5f920f8f95641` |
| 32 | `def` | [ExceptT.mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/exceptt-mklabel.md) | 178 | `declaration-track:fd2be5a7ff9e639ed1dabfd7eab9c3d8be81895f4fdf7cc41782adeb51655e51` |
| 33 | `theorem` | [ExceptT.goto_mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/exceptt-goto-mklabel.md) | 181 | `result-track:821c557dabaf118a1739f1ed017017f3fe799f72387ec090656509b029330aa8` |
| 34 | `def` | [ExceptT.callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/exceptt-callcc.md) | 185 | `declaration-track:1148f7bc15b1cf6e7cffdd075d7c870ad9d97eb36a9239095f946abde3e2f1a7` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-5.md) | 189 | `declaration-track:5be32397623a4acbcc244d7c9f9722a4f34719c19ca454ed7d458bbed6ac070f` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance.md) | 192 | `declaration-track:05f7b8093f3ce10c247315878385d71157f8434ed00d32c87a66f723f89a564b` |
| 37 | `def` | [OptionT.mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/optiont-mklabel.md) | 204 | `declaration-track:9dc74e879aef63592cebd359eb9189e4cc9fce1ab041269a46e0422a436906d1` |
| 38 | `theorem` | [OptionT.goto_mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/optiont-goto-mklabel.md) | 207 | `result-track:88222f491643bfc75cf63da5d731ea6cecc565720af00807516b7bf4dbbeb290` |
| 39 | `def` | [OptionT.callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/optiont-callcc.md) | 211 | `declaration-track:18b6c16ed61f547e6bd1e6b43a41a996e803158c75833cac9e46c6aa15b944f9` |
| 40 | `lemma` | [run_callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/run-callcc-source-edition-2.md) | 216 | `result-track:74b86cd4bb26cf549797082c9ba4a2670e52d8fce3b42596468382a3dc317b69` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-12.md) | 219 | `declaration-track:d40f804b22f20bb5da817ce5ad0681b1577930416c159834577e331662385e4b` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-15.md) | 222 | `declaration-track:e010257098a7c8050a16bd0bf06db82c62f84df9b9a46acb60d1fd55d2f91e92` |
| 43 | `def` | [WriterT.mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/writert-mklabel.md) | 233 | `declaration-track:10631ee137c553b81ab10bf25b56bb71bfc2ec889ad4ded8cfff23c1de7aee08` |
| 44 | `def` | [WriterT.mkLabel'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/writert-mklabel-source-edition-2.md) | 236 | `declaration-track:7edf35c1ef1c86166199f07c11a95a6a7071bd8be077c01542a0241c02036f47` |
| 45 | `theorem` | [WriterT.goto_mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/writert-goto-mklabel.md) | 239 | `result-track:19f105fd8f68a6251395566e576502a08d79a3196007d590a0972217a60624da` |
| 46 | `theorem` | [WriterT.goto_mkLabel'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/writert-goto-mklabel-source-edition-2.md) | 242 | `result-track:e49dd59ddcc6ffdc00d7338f4f50b75b856d8f0ca2b97fa545dd0d1d927c70f9` |
| 47 | `def` | [WriterT.callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/writert-callcc-source-edition-2.md) | 245 | `declaration-track:f02711b0bd9e6a1646e5dfb3e95c22cf0fc80212c31d60bf25b24a24da9ba9f8` |
| 48 | `def` | [WriterT.callCC'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/writert-callcc.md) | 249 | `declaration-track:65d1cf4d261bbc000da67e7c3120fc7edaa7270542c9d2d219b304bde16f2a23` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-9.md) | 256 | `declaration-track:c18c7008869dcf98b4424de25dc278101cf99bc5956363eb5e6c0bd3bed5b0c9` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-8.md) | 259 | `declaration-track:9f95c8c4c50060798fddf78f61caf2e09e5b9f76ad11520ebe0cad067e14bac0` |
| 51 | `def` | [StateT.mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/statet-mklabel.md) | 262 | `declaration-track:98b64c7d2ed2d8449affb2fb594b42010e7878bdbe7f827cff687ab9a2632893` |
| 52 | `theorem` | [StateT.goto_mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/statet-goto-mklabel.md) | 265 | `result-track:1418ebc63b53ae79f9aebeb2378f5168239cf8cb0c89d3f6708596d79c3027b3` |
| 53 | `def` | [StateT.callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/statet-callcc.md) | 268 | `declaration-track:97676f293dac7842b5b92f7d03e21b53f2823b465ff15b78869cab5cc4387943` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-2.md) | 272 | `declaration-track:15656be5a314b65aa57e6adf0b94bdb8d426457bb849bb10b9310bc7711bad5d` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-16.md) | 275 | `declaration-track:fb037037b4360833c2708bbe6fdbb350ebba166e72ec088513c474c1d6e8ff99` |
| 56 | `def` | [ReaderT.mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/readert-mklabel.md) | 288 | `declaration-track:5259abbddd5c36e7f4c7b118489a83aa008c11d5c2782a50bac2ef02d51bb08e` |
| 57 | `theorem` | [ReaderT.goto_mkLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/readert-goto-mklabel.md) | 291 | `result-track:83368025504513a99bf258dd37fc5d20d8411bf9a539cae9162d78447228f745` |
| 58 | `def` | [ReaderT.callCC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/readert-callcc.md) | 294 | `declaration-track:6442a617f517c9449604453dfb60dbe5b34c4c6c101f7730dde2ba6559ded9fa` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-11.md) | 298 | `declaration-track:cd4dd5ebb637513d330bf33ad5972aac695f6205b584a6cf99a7a62013bccb88` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/instance-source-edition-13.md) | 301 | `declaration-track:d5757e604da4ac8800d266c34c81bb0b599d57f138a04a90141bfdd405fd3397` |
| 61 | `def` | [ContT.equiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ContPublic.lean/declarations/contt-equiv.md) | 312 | `declaration-track:93d4f417cbb1f4a24f96643d8219d783f0bf46894e6557273d2e09b18e0ae232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d020215283c9edf20c83bb249519aee4415944df1e1020add121833ebb9d3788 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cont/Variant590569383f4471b44a2cbdc834c96e160494757997a2705fb6787624a113bd8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
