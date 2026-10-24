# Verification target: GRWTSK.Topology.MetricTopology.Hensel.Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd6e8cd6c898970d59bacd954f8880f95a22bdba",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd6e8cd6c898970d59bacd954f8880f95a22bdba`.

Source path: `GRWTSK/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [padic_polynomial_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/padic-polynomial-dist--302fb56a17baf0adea97b4bd.md) | 44 | `result-track:302fb56a17baf0adea97b4bdf3fe385f2ab3532557d377d533fe05149817cfa7` |
| 2 | `theorem` | [comp_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/comp-tendsto-lim--6fce5843202082aed3d75717.md) | 56 | `result-track:6fce5843202082aed3d75717f5de06e40eb0c7143efeaa6a024aaff7ef876a4c` |
| 3 | `theorem` | [ncs_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/ncs-tendsto-lim--80f1627d3f874c3cc117ef62.md) | 66 | `result-track:80f1627d3f874c3cc117ef62aa6a2e4e27cfaf5c221d29dd9b882bff90396e7f` |
| 4 | `theorem` | [ncs_tendsto_const](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/ncs-tendsto-const--d9368d106c8d11c0def78677.md) | 75 | `result-track:d9368d106c8d11c0def78677f205fadfeb9d28c9c1c7a94b632c0fd29c69bea8` |
| 5 | `theorem` | [norm_deriv_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/norm-deriv-eq--ad8534a6436ac218829232a9.md) | 79 | `result-track:ad8534a6436ac218829232a9c71dccea4ccfd705fc3bad2489728edd991fb6e2` |
| 6 | `theorem` | [tendsto_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/tendsto-zero-of-norm-tendsto-zero--44d70a79f54245327782a708.md) | 92 | `result-track:44d70a79f54245327782a708cf3779b66518a600d776b4f07d29be0e4b1af48a` |
| 7 | `theorem` | [limit_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/limit-zero-of-norm-tendsto-zero--d77d66a494d808a06e4582aa.md) | 96 | `result-track:d77d66a494d808a06e4582aa266309612dfbe5cdc28d165a9e2125679dbe2598` |
| 8 | `theorem` | [a_soln_is_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/a-soln-is-unique--2cc349190224dd91578eccab.md) | 104 | `result-track:2cc349190224dd91578eccabcd6e98bb7e2a852bcf8d1be279508f4425dc3d74` |
| 9 | `def` | [T_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-gen--7c06a844c6c3485b9cf61732.md) | 132 | `declaration-track:7c06a844c6c3485b9cf6173218bbcea6b01cffff5af538a8f234738b7a9a09c7` |
| 10 | `theorem` | [T_def](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-def--e4625a22ddbfeb635fba185c.md) | 138 | `result-track:e4625a22ddbfeb635fba185c936ca044da2dba033aed85556ee3ccd8fb8befbe` |
| 11 | `theorem` | [T_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-nonneg--236064f292e3790214c1ac0d.md) | 141 | `result-track:236064f292e3790214c1ac0d7971fff9c9b89d6da3fe8ca1f9419525b2dba114` |
| 12 | `theorem` | [T_pow_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-pow-nonneg--e0327491011701c71bebf2fa.md) | 143 | `result-track:e0327491011701c71bebf2fa98006d61556d2e9c5e909058793ba7c0f3a0cea3` |
| 13 | `theorem` | [deriv_sq_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/deriv-sq-norm-pos--f453c4cb22fa66dbbdd2b803.md) | 148 | `result-track:f453c4cb22fa66dbbdd2b80385892b1f8bae8084eb3f6b8bf1a35148e06a1ad5` |
| 14 | `theorem` | [deriv_sq_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/deriv-sq-norm-ne-zero--5855a69fcfaf6937c25baf86.md) | 151 | `result-track:5855a69fcfaf6937c25baf861f78b2b464d62f8c7efea88cef771006925e9b25` |
| 15 | `theorem` | [deriv_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/deriv-norm-ne-zero--d2aee1688d385dd084566ac3.md) | 154 | `result-track:d2aee1688d385dd084566ac385bf57d9db03c1e2ff04a3309443016e463be314` |
| 16 | `theorem` | [deriv_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/deriv-norm-pos--99c08db6a356e0c19d08cc10.md) | 157 | `result-track:99c08db6a356e0c19d08cc102f03cd83a17978553bd2654f045b958f61296159` |
| 17 | `theorem` | [deriv_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/deriv-ne-zero--6f3f39f5501e6a80cc87843f.md) | 160 | `result-track:6f3f39f5501e6a80cc87843f15e0efe814d2c00ede843f2688ad8d42eba5cac9` |
| 18 | `theorem` | [T_lt_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-lt-one--92445fca61379267fafbefed.md) | 164 | `result-track:92445fca61379267fafbefeda2d3253da24533ead868abe064c81f6f6faeaa3d` |
| 19 | `theorem` | [T_pow](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-pow--0502d727d0fb2195cbefb574.md) | 168 | `result-track:0502d727d0fb2195cbefb574c02b3271bebf300f484160a8f0eef7e7cdb9ab09` |
| 20 | `theorem` | [T_pow'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-pow--d5bff847cca17e9b12159397.md) | 170 | `result-track:d5bff847cca17e9b12159397e0142ab705b8880cae7d14f8eaf616e68206a4a8` |
| 21 | `def` | [ih_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/ih-gen--4ffc1484b0b1a98ef745d303.md) | 173 | `declaration-track:4ffc1484b0b1a98ef745d30376efcd3bc0cbdc20701b73717d5ebf81a9afe19f` |
| 22 | `theorem` | [ih_0](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/ih-0--87f89d33835cc7335d50d8a4.md) | 179 | `result-track:87f89d33835cc7335d50d8a484c87e18f651f14df6d06d016503efa09b4520ff` |
| 23 | `theorem` | [calc_norm_le_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/calc-norm-le-one--155b48fb48e73005fe9a9956.md) | 182 | `result-track:155b48fb48e73005fe9a9956faeb088355d8f31f7fd0dbe01f0399ed367ef923` |
| 24 | `theorem` | [calc_deriv_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/calc-deriv-dist--609775be64a306c44026c267.md) | 195 | `result-track:609775be64a306c44026c2671f65866fd763c22eb43743d5c96c486711054f00` |
| 25 | `def` | [calc_eval_z'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/calc-eval-z--6eaf86b69e22acb470b0b3b5.md) | 211 | `declaration-track:6eaf86b69e22acb470b0b3b56f6670ad4a1e68573844f507035d0765f58a5087` |
| 26 | `theorem` | [calc_eval_z'_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/calc-eval-z-norm--b6e4f66e74d854fb970f0087.md) | 231 | `result-track:b6e4f66e74d854fb970f00876ca9d2ffd20ffa585b74df858d4ac7a3e59cf099` |
| 27 | `def` | [ih_n](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/ih-n--5995e63fae37d27940ac456a.md) | 250 | `declaration-track:5995e63fae37d27940ac456a4cf565b128817d904ada6453330c0b18516aa056` |
| 28 | `def` | [newton_seq_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-aux--0ebed852dd64e5d024a6ceeb.md) | 266 | `declaration-track:0ebed852dd64e5d024a6ceeb17bb59a411a9c6d37f118012fce9f3da658a85b3` |
| 29 | `def` | [newton_seq_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-gen--a47224106395897340d1fff1.md) | 270 | `declaration-track:a47224106395897340d1fff1182535db32dcae3252d26ec2444efe10883c91b6` |
| 30 | `theorem` | [newton_seq_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-deriv-norm--9fa405c8457fa6c9e29d1e76.md) | 275 | `result-track:9fa405c8457fa6c9e29d1e76708b534b50bf63113c967d3abe31fe8113a3f4f7` |
| 31 | `theorem` | [newton_seq_norm_le](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-norm-le--36a00aa1602afeff0dc51ce2.md) | 279 | `result-track:36a00aa1602afeff0dc51ce268860d38bf3ad8a12e1d9187867e49771e14aabe` |
| 32 | `theorem` | [newton_seq_norm_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-norm-eq--a53edb697ea45dfd084efd8c.md) | 284 | `result-track:a53edb697ea45dfd084efd8c2704e23ae449c6b8bfe487d6691ea1335c04135a` |
| 33 | `theorem` | [newton_seq_succ_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-succ-dist--09bfbd96ddb3e9ab4b2ad4b2.md) | 290 | `result-track:09bfbd96ddb3e9ab4b2ad4b2f5d91d439a0295ce38363e9e18663ef36927deef` |
| 34 | `theorem` | [newton_seq_dist_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-dist-aux--d279eab02f44d24db506116e.md) | 302 | `result-track:d279eab02f44d24db506116e482b634df78952bdafb7523c27feec2fb1b1b046` |
| 35 | `theorem` | [newton_seq_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-dist--3d09d6387c5a4de0cb31e9bb.md) | 324 | `result-track:3d09d6387c5a4de0cb31e9bb5e27ab8239abe6b1f58741b25ddb2e941f0a21d3` |
| 36 | `theorem` | [bound'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/bound--a8f8f64e3d0571e1779a7628.md) | 330 | `result-track:a8f8f64e3d0571e1779a7628a8508f6954bf8e37a004bb6493f2e8feb3a3474f` |
| 37 | `theorem` | [bound](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/bound--64fed716ce77b224a9a3e415.md) | 337 | `result-track:64fed716ce77b224a9a3e415b306add152334d45caca44d9de80cfc597c5af59` |
| 38 | `theorem` | [bound'_sq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/bound-sq--68be7473b96cc4bfe9b47a90.md) | 341 | `result-track:68be7473b96cc4bfe9b47a908a2ff6ee09da632099efba1a10d404e40f3c1270` |
| 39 | `theorem` | [newton_seq_is_cauchy](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-is-cauchy--2351620c7b756e2f989c22aa.md) | 350 | `result-track:2351620c7b756e2f989c22aacd74462a4374a6da400354ab6a3948c5bf855671` |
| 40 | `def` | [newton_cau_seq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-cau-seq--e517bb42a0889af19c6376b3.md) | 353 | `declaration-track:e517bb42a0889af19c6376b348fdc97c52a2d701e77082ae9554ad404cfde365` |
| 41 | `def` | [soln_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/soln-gen--693ffb987c79ef0ec1297b26.md) | 355 | `declaration-track:693ffb987c79ef0ec1297b263ab5d6c21132352ad2a8643362e1e97377f567c0` |
| 42 | `theorem` | [soln_spec](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/soln-spec--6e607fea0dda3097d7d8459e.md) | 359 | `result-track:6e607fea0dda3097d7d8459e41c1124ed89d357b4fef74d14f951510f36bcb47` |
| 43 | `theorem` | [soln_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/soln-deriv-norm--9ceef909417d8907590a6119.md) | 363 | `result-track:9ceef909417d8907590a6119b841b83ac3540e4647eefa3f56f838638dcf82a8` |
| 44 | `theorem` | [newton_seq_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-norm-tendsto-zero--2d3b4d09afdaff7c8a4c0ca3.md) | 366 | `result-track:2d3b4d09afdaff7c8a4c0ca3d2905b86f9cc60ca39d76c8a692bd94211aea187` |
| 45 | `theorem` | [newton_seq_dist_tendsto'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-dist-tendsto--12c3cc715fddaa22136e22da.md) | 370 | `result-track:12c3cc715fddaa22136e22da86ff3f81acfd54eb42c96513e25fe4d9374f2c45` |
| 46 | `theorem` | [eval_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/eval-soln--4d738542cfbb217f677c9dba.md) | 374 | `result-track:4d738542cfbb217f677c9dbad18a99f8cb1bc30d7b4b11f070428a4f08e909a0` |
| 47 | `theorem` | [T_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/t-pos--c9e67f2f5341cbea1dc279bc.md) | 380 | `result-track:c9e67f2f5341cbea1dc279bca420e0268862a0df212b52b29bbbb1a27cd6a214` |
| 48 | `theorem` | [newton_seq_succ_dist_weak](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-succ-dist-weak--27cff7db5369ddaa42bd0c45.md) | 384 | `result-track:27cff7db5369ddaa42bd0c457f36f07604c10e44d7974637e1dd4741b2d02ce3` |
| 49 | `theorem` | [newton_seq_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-dist-to-a--76b15b6193ebeed8acfd73c5.md) | 405 | `result-track:76b15b6193ebeed8acfd73c566120497ec7cc79a078ee55ac97eadc85a194128` |
| 50 | `theorem` | [newton_seq_dist_tendsto](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/newton-seq-dist-tendsto--0a370cbc28c09f085f79f4e0.md) | 423 | `result-track:0a370cbc28c09f085f79f4e043d6e61834003fc6c530cb8df18b3278cf049d08` |
| 51 | `theorem` | [soln_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/soln-dist-to-a--ecf39e84c32be67893fc52e1.md) | 429 | `result-track:ecf39e84c32be67893fc52e1a78ae42b69eb35e3a247fb4daf296abb9d64f56c` |
| 52 | `theorem` | [soln_dist_to_a_lt_deriv](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/soln-dist-to-a-lt-deriv--fd6ee2f2e1f2f5f645302141.md) | 432 | `result-track:fd6ee2f2e1f2f5f645302141233be6245b6c862c6ec13d84946ade4f638ae5a5` |
| 53 | `theorem` | [soln_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/soln-unique--0e7436d83279e47ee117961b.md) | 435 | `result-track:0e7436d83279e47ee117961bcb55cff45df2cef9cfd0a89bc9ae3b9fe378e890` |
| 54 | `theorem` | [a_is_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/a-is-soln--863a356c6a11af5923f4d87b.md) | 454 | `result-track:863a356c6a11af5923f4d87b773c0c68b9f6428e0ad161563dc0f4a67a6389e4` |
| 55 | `theorem` | [hensels_lemma](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantbd9fab1abd6a16106aa5d8f660e69cec394cd2db1f559b7a242315c39b9d83d4.lean/declarations/hensels-lemma--5b668677fccdd02c933cea4d.md) | 461 | `result-track:5b668677fccdd02c933cea4ded1dd8c4d0ebfb56318b10cd885c9819bc7218e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
