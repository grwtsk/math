# Verification target: Polynomial Law Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fce9765fe9863e5b5e774c90f8aa9f2d9309110",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fce9765fe9863e5b5e774c90f8aa9f2d9309110`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DFinsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialLaw](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/polynomiallaw.md) | 58 | `declaration-track:fd3e372a4de06b401a372e6e1e5616a2c4968410ad5415f71b70b22ddaac2e98` |
| 2 | `theorem` | [PolynomialLaw.isCompat_apply'](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/polynomiallaw-iscompat-apply.md) | 71 | `result-track:f87f5a471c4dd8849ef6f227ff63e841cb10aa259f6c74527fa26953ef0418c7` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-6.md) | 90 | `declaration-track:83413df286b1ec44a54f83a67873cd4b680b2d4b126f58e9d6acc317ee571657` |
| 4 | `theorem` | [zero_def](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/zero-def.md) | 93 | `result-track:4c32f43a15d6396ba77ac7a554bb4ece6fafbf1dc006ca5ff9d3fbbe9ffb6c61` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-10.md) | 96 | `declaration-track:e5a1679216f193c0849faf18aaad5cb61adc105f21eeda16c0b64ede5ff97d15` |
| 6 | `def` | [id](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/id.md) | 99 | `declaration-track:99d258fa77981cd8526f139b345e5a87a0da8b363bceb4026eb3be87979d105c` |
| 7 | `theorem` | [id_apply'](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/id-apply.md) | 102 | `result-track:e5a3659a3325aa1d046956a3d860ca7d32c0d573ea34209c66ae2116eb1a9ce1` |
| 8 | `def` | [add](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/add.md) | 106 | `declaration-track:1eee0541c3fa4317a5d53614e26a6d259e919353e55a09ae8b476a78b90fba8b` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-7.md) | 109 | `declaration-track:8e654f0a02c6fee311e480378977588aa4ec8762341e026962f76d779d3a9949` |
| 10 | `theorem` | [add_def](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/add-def.md) | 112 | `result-track:01cafd50701c150995c9640d340551484289731d60c382d109e9de3729ec65de` |
| 11 | `theorem` | [add_def_apply](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/add-def-apply.md) | 115 | `result-track:f2624e31f0d422d1e5f5f51ae1fdaf1de0ad45258f539d03967d4d5bede39c05` |
| 12 | `def` | [smul](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/smul.md) | 119 | `declaration-track:96db213bd2934f918807c6dde5790596cabaecba79a4d74ebff3d43f5c3379cd` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-3.md) | 122 | `declaration-track:2eca887c427d20b21693b43a7fcf85f005ad1786a3c25033ef4b862fb724c645` |
| 14 | `theorem` | [smul_def](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/smul-def.md) | 125 | `result-track:a41a0cd0363338440c3f2ab2bb05e6615714983003b618e5a6d2eb670b6440c9` |
| 15 | `theorem` | [smul_def_apply](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/smul-def-apply.md) | 128 | `result-track:ef3ee62c872dcef694756c2db71235cd03ecf5e9008a5be109badeee8ec351e5` |
| 16 | `theorem` | [add_smul](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/add-smul.md) | 131 | `result-track:940e756943fd5ce97c8c7e195e6bf72c2c8e21b3218da0014007e21394d819aa` |
| 17 | `theorem` | [zero_smul](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/zero-smul.md) | 134 | `result-track:1747a6d2d16a3db356f96b35a646f52a75a732887607226b701d65c25bf28471` |
| 18 | `theorem` | [one_smul](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/one-smul.md) | 137 | `result-track:f038d872ce46436537cba6cea526fed367a209520fa61e69e60de921a9b208ad` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:2d60c7e341fd45f0d97a351c8e07525dcd1e282601092657d9650b4342ecd165` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance.md) | 144 | `declaration-track:2be67a20fcb21ae4012381501b34897fb2b0846a3c643bb245bbced3dce7c424` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-9.md) | 153 | `declaration-track:ae2f4e54d9bfa7cd73584fda6acfcaa99034348875020d4183dd25375f61aae1` |
| 22 | `def` | [neg](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/neg.md) | 168 | `declaration-track:090203401d756a4bf40336d5c0008e9dfad012a8b013573cc6f16b2cc6c0a165` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-4.md) | 171 | `declaration-track:790443c3ae5156757e534ba0baab8ccee2a46de15fcd34a10ccfff325ea8ad90` |
| 24 | `theorem` | [neg_def](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/neg-def.md) | 174 | `result-track:dd4f0fa1a0459d37534a7819ee9db1ccd3f867a4f02864290398930f7d92c1a7` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-5.md) | 177 | `declaration-track:7e30abe9aba8e280a6e52341b24f1161a200fc81591dad927469a26d426bb6e9` |
| 26 | `def` | [ground](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/ground.md) | 209 | `declaration-track:60bb5ac92a4316b5559d7df634d3e7a741c617dfa83f93107629314039b14f5f` |
| 27 | `theorem` | [ground_apply](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/ground-apply.md) | 211 | `result-track:989e9a5c9ad9b0afac0b23e3812b45e2d7e779883578f4a83b7566d23b02fbbe` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/instance-source-edition-8.md) | 213 | `declaration-track:9248ab23ec7c1af4878618d8ac8dd729d228bc299b9c4fdd70d8eaed2646ba81` |
| 29 | `theorem` | [one_tmul_ground_apply'](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/one-tmul-ground-apply.md) | 216 | `result-track:29669a2058a49b9250600c088ecef18b1e273c6cf50cfed696fa926811ec5e1f` |
| 30 | `def` | [lground](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/lground.md) | 225 | `declaration-track:bffea3dcd8213aacd863377295c6f333885e291ba05c07e43a3167acf776fa07` |
| 31 | `theorem` | [ground_id](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/ground-id.md) | 230 | `result-track:9e0e9748e4df5e252d0a74df8669bc78f555862e416793829b359fb4b891ae3e` |
| 32 | `theorem` | [ground_id_apply](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/ground-id-apply.md) | 233 | `result-track:d45dd8a196d1ecb858c5ca35f2a580185dadc4f2f481bab4fee41fe7c8d489f7` |
| 33 | `def` | [comp](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/comp.md) | 248 | `declaration-track:6ba0988ae9349cfa9548aaf23439017675abc92e59556c794e8354283cbd8213` |
| 34 | `theorem` | [comp_toFun'](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/comp-tofun.md) | 252 | `result-track:83ea689057fbd28219eae3ced16057950fce5c0caa9113a2bffc8842b87987b8` |
| 35 | `theorem` | [comp_assoc](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/comp-assoc.md) | 255 | `result-track:097e1f0efc9a2b57b83cc8970351f6837685b0c78fc539e1b40756f741929cf4` |
| 36 | `theorem` | [comp_id](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/comp-id.md) | 258 | `result-track:7eff53543967cd70ff0ed2a83b7aea8f778818c51d08dca7fc35c6518fe6fc38` |
| 37 | `theorem` | [id_comp](../../../../CommutativeAlgebra/PolynomialLawBasic.lean/declarations/id-comp.md) | 260 | `result-track:71777a197922e6def37fad92a8945d11f60f81febdc18c3bd3fe4393037dcf69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03686ce1110cd59db71eeba54ace27d7cb5cc7c5c09d43d9fec45411cce21aac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
