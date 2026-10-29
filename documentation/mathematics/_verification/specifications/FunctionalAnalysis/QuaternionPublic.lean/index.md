# Verification target: Quaternion Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c62dc6f0f926d66ca2b8e57216602874c75d52b8",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quaternion/Variant37c3ad78c7019dff722100862c4d9714243da98c3674c49e2021300dac7726ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/QuaternionPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/QuaternionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c62dc6f0f926d66ca2b8e57216602874c75d52b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Quaternion/Variant37c3ad78c7019dff722100862c4d9714243da98c3674c49e2021300dac7726ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quaternion/Variant37c3ad78c7019dff722100862c4d9714243da98c3674c49e2021300dac7726ed.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:5b824363725f7063f9541a665ae10d105909f842c19be70a00bca6f8d96047b2` |
| 2 | `theorem` | [inner_self](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/inner-self.md) | 47 | `result-track:b9af5517c2bb0eab9c03c5bd7bca483ddbd1e3406a87c04c08e4f0d624a51423` |
| 3 | `theorem` | [inner_def](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/inner-def.md) | 50 | `result-track:bb7f5f5b3fa3d039addc93d79b56f2f2eee3ca3e6737bf36562b411fbd40348b` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-9.md) | 53 | `declaration-track:e81c17c3702287def79965988abbfb398ed4cd99e224230bdebf7b0132624131` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-7.md) | 62 | `declaration-track:de9f01d7344f6df1bbffcffe4fc9d8e16c44fce9265695a4e8f820bc129169fd` |
| 6 | `theorem` | [normSq_eq_norm_mul_self](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/normsq-eq-norm-mul-self.md) | 65 | `result-track:87e711ad3733e99c11d49a3d396d80ba331371fd2b214f019979ae0745943d72` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-8.md) | 68 | `declaration-track:e19d762b6b2eef4302d1b7226c02ec0e23bbfdb7b4f42a13d9464a1672563b2d` |
| 8 | `theorem` | [norm_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/norm-coe.md) | 72 | `result-track:cddc204e150709de74b5d365db023de04382601bed8c6e438a3fe52bf13fa4ca` |
| 9 | `theorem` | [nnnorm_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/nnnorm-coe.md) | 76 | `result-track:663957fe92346a4b56923419c72f89de71b282a95aa47322f4c21e0632aa5559` |
| 10 | `theorem` | [norm_star](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/norm-star.md) | 80 | `result-track:81ae262f475a389742aec4d892cc0e7466d110798e4bea732a6a8126a0249b23` |
| 11 | `theorem` | [nnnorm_star](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/nnnorm-star.md) | 84 | `result-track:de636ba0161d27a3c5a5358fc8af451d180b4feb7e58f1c326c78ced4b12e4c5` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance.md) | 87 | `declaration-track:2c02a0b893f0e0bc56298719379075233727f5e483a825c8598d26234dbdd4cc` |
| 13 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:42bcac3cee1eb3136ef48c1ff7f533f95b69ca7db67b474e69d6018878ca2414` |
| 14 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-5.md) | 94 | `declaration-track:b0f384830e5e58da0497dfc92cc6ee82770f5bb9c84c74fe526225b09c2cc73b` |
| 15 | `def` | [coeComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coecomplex.md) | 99 | `declaration-track:9db8eaac983809c2e9687d72d562d43810eb332bd066080295d5e7fdd38b7b4f` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:aba7f82713c3dfbc95718b9844ac8eac3629854d6ac72db23e3f3b8a34d491d6` |
| 17 | `theorem` | [re_coeComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/re-coecomplex.md) | 104 | `result-track:854ff3564e427e11b8ae70eff270da54bdf6934e2931a5fda1be02fec5298da1` |
| 18 | `theorem` | [imI_coeComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/imi-coecomplex.md) | 108 | `result-track:8bf70101c4d549c166d288edef9833214195e8b01c0240894697b3b20e1c6938` |
| 19 | `theorem` | [imJ_coeComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/imj-coecomplex.md) | 112 | `result-track:18ccee11dbe4086af65d6d50566193771e9198c619464eb1a62a5feddcf8447b` |
| 20 | `theorem` | [imK_coeComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/imk-coecomplex.md) | 116 | `result-track:f30d370fcd3248799f1e21154e1df6b36f3a8061ec7aee98af17825522cee29b` |
| 21 | `theorem` | [coeComplex_add](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coecomplex-add.md) | 120 | `result-track:bc7252f663ede437030f94c4211a8ec9061f25c1cc9679dd1a69029bdfe0fbe4` |
| 22 | `theorem` | [coeComplex_mul](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coecomplex-mul.md) | 123 | `result-track:ac097cdb44e04ac1ed62d8c89080918db24aa27ce60175331b591cb70844d72a` |
| 23 | `theorem` | [coeComplex_zero](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coecomplex-zero.md) | 126 | `result-track:9ef951166fb2d99439982568c60639f04148673624a363c4b18a8815d7ac0632` |
| 24 | `theorem` | [coeComplex_one](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coecomplex-one.md) | 130 | `result-track:5eeebd3093e37dbc1246bdf76b757ec052a951ad022aaf4d698918aac978b55a` |
| 25 | `theorem` | [coe_real_complex_mul](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coe-real-complex-mul.md) | 134 | `result-track:42fdda1e65370756e7117d867669f0f8b14f69b52882401a34900034810446cf` |
| 26 | `theorem` | [coeComplex_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coecomplex-coe.md) | 137 | `result-track:ee3dc2e53797d4bc3dc9a0d86f1851a6611f6048dc941504b70494d6194028e0` |
| 27 | `def` | [ofComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/ofcomplex.md) | 141 | `declaration-track:d6b6f2d1a7a50b27e72a201eaf09a384ab8100e3b113717e9799748b3957882f` |
| 28 | `theorem` | [coe_ofComplex](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/coe-ofcomplex.md) | 150 | `result-track:a7e8efd043fc78903eb24334d1a51b4f196dd6204760d698cbc6e7edac03a99a` |
| 29 | `lemma` | [norm_toLp_equivTuple](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/norm-tolp-equivtuple.md) | 153 | `result-track:db71cf5f761b33994f1795acd29544541a8b53523eeca63cc09d4b1fb76b3d09` |
| 30 | `def` | [linearIsometryEquivTuple](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/linearisometryequivtuple.md) | 161 | `declaration-track:cd907d3c26912da5422a5bd452dd4d71fad6ad29b3959eee58b120bda178bf9e` |
| 31 | `theorem` | [continuous_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-coe.md) | 169 | `result-track:0cafd73784f582a1be0b23d8450728f2703ca8c39792b05532b33ae1d1dc75a7` |
| 32 | `theorem` | [continuous_normSq](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-normsq.md) | 173 | `result-track:b5445629ead5292c51346756aca998a4cf0e196befd66409f33ae793860a3028` |
| 33 | `theorem` | [continuous_re](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-re.md) | 178 | `result-track:3f8a20fc4cfe1fbf09489ccdf6588df640daa1c6359a8015ec605beaf228bf9b` |
| 34 | `theorem` | [continuous_imI](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-imi.md) | 182 | `result-track:36fbf61a83e488a6188cb4c9dd9bd576426a54ca18f040c2c6f918faf077f312` |
| 35 | `theorem` | [continuous_imJ](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-imj.md) | 186 | `result-track:974ae0864acbc5419692cceb880b66038949bc75b0db765d99b62c373d9b74b2` |
| 36 | `theorem` | [continuous_imK](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-imk.md) | 190 | `result-track:36b046e12658da389d1d629d84d8ef8f3c47cfa2e767dbc8dec79d60f3e193b8` |
| 37 | `theorem` | [continuous_im](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/continuous-im.md) | 194 | `result-track:b96d9271fea2b3da9bffc7c4857a13a4ccb3d67d2c65300234d1d0eedaee80f3` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/instance-source-edition-6.md) | 197 | `declaration-track:cc34e1af23e0a91f9ccb61fb83c7ed131fbf909d610bedfe9c327c4a50d321dd` |
| 39 | `theorem` | [hasSum_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/hassum-coe.md) | 207 | `result-track:733b01cc7fa260ca3a668e2c3d8ede2e314579b5dee142516531ee4896e534d1` |
| 40 | `theorem` | [summable_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/summable-coe.md) | 214 | `result-track:47c7c7dbf31e0037704a1a1d132a8c97122124ff77863eac77dce15ac1930934` |
| 41 | `theorem` | [tsum_coe](../../../../FunctionalAnalysis/QuaternionPublic.lean/declarations/tsum-coe.md) | 221 | `result-track:5156e5f802124ba4101825491f352a8c7ee571d1b968eb686a5daa17b55acf28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abbe24cd43ac6cd6a7a91e955beff5e60d5bc9cc641f725d7d6d820b3322daa2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Quaternion/Variant37c3ad78c7019dff722100862c4d9714243da98c3674c49e2021300dac7726ed.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Quaternion/Variant37c3ad78c7019dff722100862c4d9714243da98c3674c49e2021300dac7726ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
