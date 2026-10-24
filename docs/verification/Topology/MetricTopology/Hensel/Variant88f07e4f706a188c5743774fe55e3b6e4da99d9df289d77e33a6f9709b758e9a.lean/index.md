# Verification target: GRWTSK.Topology.MetricTopology.Hensel.Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13431c4c2cb9de5896e340e1415f6454c838c6a5`.

Source path: `GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Identities` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicIntegers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [padic_polynomial_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/padic-polynomial-dist--99b89fb2181d740e2359c323.md) | 40 | `result-track:99b89fb2181d740e2359c3237ad84be945cc8d8359f45a886606012807b8ae14` |
| 2 | `theorem` | [comp_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/comp-tendsto-lim--ccca10c48e6f0ec2345043d3.md) | 50 | `result-track:ccca10c48e6f0ec2345043d359e395c701c472e14b06b730f94b1fbcc8c98eb0` |
| 3 | `theorem` | [ncs_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/ncs-tendsto-lim--a293cdaadaba347eb9f7d5d4.md) | 59 | `result-track:a293cdaadaba347eb9f7d5d4f241eeeed8b3e8f896fadf80c96e6db3b5f056f2` |
| 4 | `theorem` | [ncs_tendsto_const](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/ncs-tendsto-const--f6842c7e64bf4d2133eb91a2.md) | 65 | `result-track:f6842c7e64bf4d2133eb91a2d6b369b1bac816381afbce6799d8d16d92ab220b` |
| 5 | `theorem` | [norm_deriv_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/norm-deriv-eq--e5b6d9775678e79721885999.md) | 69 | `result-track:e5b6d9775678e79721885999e3195aa3e106d26c58febda615e1dc21e2ecbade` |
| 6 | `theorem` | [tendsto_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/tendsto-zero-of-norm-tendsto-zero--7644121daa086e612c35192d.md) | 81 | `result-track:7644121daa086e612c35192d539693bbb8aa838a9df55c77cfca2d295398bb45` |
| 7 | `theorem` | [limit_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/limit-zero-of-norm-tendsto-zero--d3b6e89f56a685d924a5a83a.md) | 84 | `result-track:d3b6e89f56a685d924a5a83a1cecf7c6567186d24f300beae44d522a6ced43eb` |
| 8 | `def` | [T_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-gen--05394c9483ed4c2bfad7ba24.md) | 96 | `declaration-track:05394c9483ed4c2bfad7ba241cad77eb95575b7190589f1725fafa0cb5d2a4b2` |
| 9 | `theorem` | [T_def](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-def--03269917971efffd94edc600.md) | 102 | `result-track:03269917971efffd94edc600892319f9069f4d68f574ecd479292c2dde8db217` |
| 10 | `theorem` | [T_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-nonneg--8fa79091c1de58eeab7b729f.md) | 105 | `result-track:8fa79091c1de58eeab7b729fb294a0c2c2c479a74462093934ba02bb5961cf0c` |
| 11 | `theorem` | [T_pow_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-pow-nonneg--a2b053afe904b87d6e95ad45.md) | 107 | `result-track:a2b053afe904b87d6e95ad45c937108e0fa8c2d8ab2431ef1dcfa967fbea68d5` |
| 12 | `theorem` | [deriv_sq_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/deriv-sq-norm-pos--d681dfb5eb3121b924d67ace.md) | 112 | `result-track:d681dfb5eb3121b924d67ace3e33791d28cd07a676262f1cc1d6786092601417` |
| 13 | `theorem` | [deriv_sq_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/deriv-sq-norm-ne-zero--141974d6555c9a8c7cf528b3.md) | 115 | `result-track:141974d6555c9a8c7cf528b3018c9cee9bb239950cb874a37f344f563158626b` |
| 14 | `theorem` | [deriv_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/deriv-norm-ne-zero--2e6c33378124bc9548597141.md) | 118 | `result-track:2e6c33378124bc954859714197deda68629a6904486fa88e4d1ee730538b2a6a` |
| 15 | `theorem` | [deriv_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/deriv-norm-pos--c213d2b1bf528bf58932c6b9.md) | 121 | `result-track:c213d2b1bf528bf58932c6b90cb345294d33404c436f60c25d80b075f1d7626f` |
| 16 | `theorem` | [deriv_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/deriv-ne-zero--c5144bec00125f01412362f3.md) | 124 | `result-track:c5144bec00125f01412362f3cc1aa62b12e822b9bb357c2a94669b52c34ef558` |
| 17 | `theorem` | [T_lt_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-lt-one--225a2fd675cd733ea695448a.md) | 128 | `result-track:225a2fd675cd733ea695448aeb0f0fea37cae3cbfaf23b237aace3010430d569` |
| 18 | `theorem` | [T_pow](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-pow--6fb18789a6c8d1e37a854470.md) | 132 | `result-track:6fb18789a6c8d1e37a854470198bb1bd28d6a2ff8ce9c93d2efb56231f94976f` |
| 19 | `theorem` | [T_pow'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-pow--be9e5f68bbe78880a7410451.md) | 134 | `result-track:be9e5f68bbe78880a741045100c4fdbbaa126e75ee866f0a11977d4340bc5df0` |
| 20 | `def` | [ih_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/ih-gen--eedcbff2f5ab4eb74ccbf927.md) | 137 | `declaration-track:eedcbff2f5ab4eb74ccbf9275dcb4734f9ca61202e49a929b5feac7b88f153f1` |
| 21 | `theorem` | [ih_0](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/ih-0--b74798595ad32816f60d0a2d.md) | 142 | `result-track:b74798595ad32816f60d0a2d4d9e4a588178108e938db0f41a6fd01b1eb46d73` |
| 22 | `theorem` | [calc_norm_le_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/calc-norm-le-one--774c9598501bad5c061687af.md) | 145 | `result-track:774c9598501bad5c061687af19dd3a538d5d62ae4802aad3047e5e6e9090e4f2` |
| 23 | `theorem` | [calc_deriv_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/calc-deriv-dist--1648b41aa2c388c50ef0d30a.md) | 159 | `result-track:1648b41aa2c388c50ef0d30a338cdf43477d1ef752883aa6bade49ebb6330626` |
| 24 | `def` | [calc_eval_z'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/calc-eval-z--a93c77e683fc73d3073cf211.md) | 174 | `declaration-track:a93c77e683fc73d3073cf21170ddb4801838704f1a0f219b51941da07dbfe265` |
| 25 | `def` | [calc_eval_z'_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/calc-eval-z-norm--89b9f97b8b3e9bcc9824a9db.md) | 195 | `declaration-track:89b9f97b8b3e9bcc9824a9dbf2de4ce4a23c7fc19a52dbd29a20d7c00b21774d` |
| 26 | `def` | [ih_n](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/ih-n--fad77270f08f634bb6e26db8.md) | 213 | `declaration-track:fad77270f08f634bb6e26db800b96ceec0c56e6809ceeb151dafe1b1d687a29b` |
| 27 | `def` | [newton_seq_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-aux--56a1c4ee5974e4737f1d2b5e.md) | 229 | `declaration-track:56a1c4ee5974e4737f1d2b5e91301fbd96bd20b25487563d0336469766095f4c` |
| 28 | `def` | [newton_seq_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-gen--b71c0b633862a31342ff8606.md) | 233 | `declaration-track:b71c0b633862a31342ff8606db254532f96f925a75e384e5bee3ad04bcc35b1f` |
| 29 | `theorem` | [newton_seq_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-deriv-norm--9bbf553ae5e5ab968837cf83.md) | 238 | `result-track:9bbf553ae5e5ab968837cf83bb5f041fe9088ccd5b2163ea5381d54d9a467a71` |
| 30 | `theorem` | [newton_seq_norm_le](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-norm-le--2b603a2c3e8c555b41ee28c9.md) | 242 | `result-track:2b603a2c3e8c555b41ee28c963950aeb715a2d01b13c0afe8fa75e641d3e13b1` |
| 31 | `theorem` | [newton_seq_norm_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-norm-eq--5bcd22931c8c186d26459f4b.md) | 246 | `result-track:5bcd22931c8c186d26459f4b9f5a392f816e833a0c5e5a450087aaffbdf20f82` |
| 32 | `theorem` | [newton_seq_succ_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-succ-dist--d2a19c72c15ffe5ab9ecb2a2.md) | 252 | `result-track:d2a19c72c15ffe5ab9ecb2a2a28dbc0f4492786ff58f54859b5e557ba8bffc44` |
| 33 | `theorem` | [newton_seq_dist_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-dist-aux--327482347901f318bd2d5e92.md) | 263 | `result-track:327482347901f318bd2d5e92442230eb67e3367bf6cc435488eb2e4454382c8f` |
| 34 | `theorem` | [newton_seq_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-dist--d54212ae986de67c22420f0e.md) | 285 | `result-track:d54212ae986de67c22420f0eb9fc0e3220734df9c5631b0b59c18371fba81be7` |
| 35 | `theorem` | [bound'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/bound--27941d0e55a898ff2618368b.md) | 291 | `result-track:27941d0e55a898ff2618368bd73ee39ab974c4881073e9b1d089049fe6622b9f` |
| 36 | `theorem` | [bound](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/bound--0cff04c99d65f7aa90f082c7.md) | 298 | `result-track:0cff04c99d65f7aa90f082c716344f694020400646c5c00081335099ccbcb1a4` |
| 37 | `theorem` | [bound'_sq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/bound-sq--5424747d1ca810e30a9fd828.md) | 302 | `result-track:5424747d1ca810e30a9fd828a7202b8a42c7d02ff446aef6eaeaf5e38aa7bc8d` |
| 38 | `theorem` | [newton_seq_is_cauchy](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-is-cauchy--1f88cb434ea9a7ea1dee3487.md) | 311 | `result-track:1f88cb434ea9a7ea1dee3487c77515bc9bd6a76c7a29013097bbf370226631d6` |
| 39 | `def` | [newton_cau_seq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-cau-seq--588b00229f3359a8764113c6.md) | 314 | `declaration-track:588b00229f3359a8764113c67b01bf06c0b80f009bc9f034072c282db74fa274` |
| 40 | `def` | [soln_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/soln-gen--b0c99bacf60336899f91f1e3.md) | 316 | `declaration-track:b0c99bacf60336899f91f1e32c00be682dd879f362009d4a842379b9f18e05b7` |
| 41 | `theorem` | [soln_spec](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/soln-spec--933840f422bdced40c4ce65d.md) | 320 | `result-track:933840f422bdced40c4ce65d7fadb9d7ecd00e172036d4d55cd5fefceb7f12f5` |
| 42 | `theorem` | [soln_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/soln-deriv-norm--81544f6aab298dda78c77642.md) | 324 | `result-track:81544f6aab298dda78c77642e54623e2ada87580df775006c626997ab16c3811` |
| 43 | `theorem` | [newton_seq_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-norm-tendsto-zero--8dff6fb59460b94832106898.md) | 327 | `result-track:8dff6fb59460b948321068983246304d0749220de6d6e2551c76d582d9abd2e4` |
| 44 | `theorem` | [newton_seq_dist_tendsto'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-dist-tendsto--61fbe1d3abfedc1d70223dd5.md) | 331 | `result-track:61fbe1d3abfedc1d70223dd5b1f937f530f17e1fc9415fc0cdbd2ac17b2076aa` |
| 45 | `theorem` | [eval_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/eval-soln--a6101e4ec1ca8f2df2eacf81.md) | 335 | `result-track:a6101e4ec1ca8f2df2eacf81028dbe6ccad314c0a9553ca7593f6bad236271a5` |
| 46 | `theorem` | [T_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/t-pos--1c5b4c382ae5a0a7814086f7.md) | 341 | `result-track:1c5b4c382ae5a0a7814086f74ddd960fcbacffec1662c2de459bacb3e3c91126` |
| 47 | `theorem` | [newton_seq_succ_dist_weak](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-succ-dist-weak--6257edcfa93db27ad568aa9e.md) | 345 | `result-track:6257edcfa93db27ad568aa9e811144332638be50dc55fa3443da34648c6f10e5` |
| 48 | `theorem` | [newton_seq_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-dist-to-a--e09da75800fcf03f5a309f34.md) | 365 | `result-track:e09da75800fcf03f5a309f34adfd4c7110d6658d6c0e7f2fbd100cb5011db959` |
| 49 | `theorem` | [newton_seq_dist_tendsto](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/newton-seq-dist-tendsto--7c8389ea06d70c1d1c82fb38.md) | 383 | `result-track:7c8389ea06d70c1d1c82fb38e34e7d5a370d21cabfb2410a1d849035c57d7a62` |
| 50 | `theorem` | [soln_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/soln-dist-to-a--5ec9fec031a804923bc67917.md) | 389 | `result-track:5ec9fec031a804923bc67917e9b96277d5e4fb5f316ace07ae6e7a1313f8df01` |
| 51 | `theorem` | [soln_dist_to_a_lt_deriv](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/soln-dist-to-a-lt-deriv--1e26897f9889b620b24254f2.md) | 392 | `result-track:1e26897f9889b620b24254f28dd8d3e2407909d0a4d8c6aae96cbfaf2d40241e` |
| 52 | `theorem` | [soln_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/soln-unique--ddc1a7dfaa4875a8e9783269.md) | 395 | `result-track:ddc1a7dfaa4875a8e9783269feefe91707fea43ec5845123b37f82d7ed0b13cb` |
| 53 | `theorem` | [a_soln_is_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/a-soln-is-unique--deb57a0dc99e9fc9d8568f26.md) | 433 | `result-track:deb57a0dc99e9fc9d8568f26e13c619dc7f381dc15da834bef31fadd16b5f344` |
| 54 | `theorem` | [a_is_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/a-is-soln--552b0a2d9739d8fb9f159a39.md) | 460 | `result-track:552b0a2d9739d8fb9f159a39e15e86a1d2c32cefa5191f9dd07c577716ec111e` |
| 55 | `theorem` | [hensels_lemma](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/declarations/hensels-lemma--3a663e3f8f218827a0a858c1.md) | 467 | `result-track:3a663e3f8f218827a0a858c1da391419c76e30e3889f2a1b05a76e16807e02b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
