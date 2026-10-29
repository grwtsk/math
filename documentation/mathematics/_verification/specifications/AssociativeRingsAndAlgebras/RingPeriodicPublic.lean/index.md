# Verification target: Ring Periodic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1128ba9eae6d18139efa301106323fc59b269aa4",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1128ba9eae6d18139efa301106323fc59b269aa4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Periodic/Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.lean.json)

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
| 1 | `def` | [Periodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic.md) | 43 | `declaration-track:a345ed2ce238f760653a0097e60b9a6ebb88c34abae9e3ca4e87adc9607367c3` |
| 2 | `theorem` | [Periodic.funext](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-funext.md) | 46 | `result-track:a4944a663b779d59fc946991cfdc1e3775875cb3c70998fb46ca1778a9437756` |
| 3 | `theorem` | [Periodic.comp](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-comp.md) | 49 | `result-track:2a500eca900b20b967785af8cdadb1d2164682d8bcb84973762e2a7f5644fc53` |
| 4 | `theorem` | [Periodic.comp_addHom](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-comp-addhom.md) | 52 | `result-track:52b377af845c1584f53e2b36e7cc7d713b52b7eaae5114a4044b1638dc973c59` |
| 5 | `theorem` | [Periodic.mul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-mul.md) | 57 | `result-track:3e0c511af268daa9b0bbabc5d13b4b22c0f0180b3141a64380a7269e6dc15421` |
| 6 | `theorem` | [Periodic.div](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-div.md) | 61 | `result-track:3d791c0487064b22f0ca8c35033772dfa94d657db6dcb6eb03a762da3b0598de` |
| 7 | `theorem` | [_root_.List.periodic_prod](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/root-list-periodic-prod.md) | 65 | `result-track:b353fb73d4b74d8857b711b988ad5e75938a9a010735ec212114eabce3ce8579` |
| 8 | `theorem` | [_root_.Multiset.periodic_prod](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/root-multiset-periodic-prod.md) | 74 | `result-track:995dd02ead72657a0792b006cd89040e01e5f014b9ec7c5feb1e82f94e129609` |
| 9 | `theorem` | [_root_.Finset.periodic_prod](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/root-finset-periodic-prod.md) | 79 | `result-track:0d64ee61baa79aa146991a21f73dea9063159c307957eeffd5e1a81dbf59b6bc` |
| 10 | `theorem` | [Periodic.smul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-smul.md) | 84 | `result-track:7b39386b601be495da0c6a7236b1921d96c823c92713d5c0af4384896c4a9002` |
| 11 | `theorem` | [Periodic.const_smul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-const-smul.md) | 87 | `result-track:906c2d72423a86976ce6bc5ca126b66aecfbe7e4198ab039f0286d3ee7fff37c` |
| 12 | `theorem` | [Periodic.const_inv_smul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-const-inv-smul.md) | 91 | `result-track:fb7192570cea5b300453afda6b4f7f5ef341555c75e22ff8761275a08de7d200` |
| 13 | `theorem` | [Periodic.add_period](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-add-period.md) | 95 | `result-track:cc4893004c570e3a91d930d3ddaee991dde2b7057dee5d68a2f92acec6a7a687` |
| 14 | `theorem` | [Periodic.sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-eq.md) | 98 | `result-track:2dafbdc0ac74380f2fa4b44c6a512bd6bdc94c91f4edd53e47810bbe244b85ea` |
| 15 | `theorem` | [Periodic.sub_eq'](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-eq-source-edition-2.md) | 101 | `result-track:d8af901dc2969ef4de9c34a20e41f3a14365bc53b3726da5f46b79a052eb94e6` |
| 16 | `theorem` | [Periodic.neg](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-neg.md) | 104 | `result-track:5bec999c0ef6e96cd28e00b3510ef414c0944c5e9a5a16ed7ec67534201961ca` |
| 17 | `theorem` | [Periodic.sub_period](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-period.md) | 107 | `result-track:78596a499510695cba615c43976b2f3fe17c08bf90e4cb27f0dfcb6159ea93d1` |
| 18 | `theorem` | [Periodic.const_add](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-const-add.md) | 111 | `result-track:c01a4fcee35bb8d155b4330fa9ee379b800a13c4d539b2760b30af5b2e368375` |
| 19 | `theorem` | [Periodic.add_const](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-add-const.md) | 114 | `result-track:5538934ef37cfc7ea9c92737ec9895e92dcf7b6d553d0bf32c97c90445843a50` |
| 20 | `theorem` | [Periodic.const_sub](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-const-sub.md) | 118 | `result-track:6eb8353c8baa46888ecfaf64d76edcafea1dcf02d0cedd336075db77780e80de` |
| 21 | `theorem` | [Periodic.sub_const](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-const.md) | 122 | `result-track:8eb698e41721a3bfc52b0207580612c2ce6d0c8e8d5570102c25c6dcbd716ba2` |
| 22 | `theorem` | [Periodic.nsmul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-nsmul.md) | 126 | `result-track:6c34c8982aa66d9a2194ec3eb127230f7ff275aacc243f6dc174d982d716da4e` |
| 23 | `theorem` | [Periodic.nat_mul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-nat-mul.md) | 129 | `result-track:0b6da8e17f96da405cdefcdf828213ea1974b9acd3689836e395e24049a42724` |
| 24 | `theorem` | [Periodic.neg_nsmul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-neg-nsmul.md) | 132 | `result-track:db56edbf9b6005a9754e5e403f7f53e5eb1aa34e972e90faab36138c1cb1b85c` |
| 25 | `theorem` | [Periodic.neg_nat_mul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-neg-nat-mul.md) | 135 | `result-track:b22b781260a82ffe90382d785996c53e4c893e92101df04d3613ad660f01473b` |
| 26 | `theorem` | [Periodic.sub_nsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-nsmul-eq.md) | 138 | `result-track:0babde715319e5e24fd655794edb819d0cdb63b0c1cc8cb42b8e006aa7600d61` |
| 27 | `theorem` | [Periodic.sub_nat_mul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-nat-mul-eq.md) | 141 | `result-track:86c64c3cb93a9d9615bcf4008a634bc11111b7fb8f05b23603a47e9609b2f1e1` |
| 28 | `theorem` | [Periodic.nsmul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-nsmul-sub-eq.md) | 145 | `result-track:5b7cae1d0f4001b671ee769550083fc90db9c7112c70c76b273a66c828482e67` |
| 29 | `theorem` | [Periodic.nat_mul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-nat-mul-sub-eq.md) | 149 | `result-track:28c1b38a00eb996d7912bf3888b7ff7c6bbe67beb8b633910b61108babf18013` |
| 30 | `theorem` | [Periodic.zsmul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-zsmul.md) | 153 | `result-track:267a72b56a87054ff3bd6f74731691e101d323a66fcad03bcb365f5196e758a3` |
| 31 | `theorem` | [Periodic.int_mul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-int-mul.md) | 158 | `result-track:3a7804bc6fa8943220dc1f1f3a294c751ad680942c41ca8fc0537c65aebdfaf6` |
| 32 | `theorem` | [Periodic.sub_zsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-zsmul-eq.md) | 162 | `result-track:ac53c6d83fa834ef21aff71825af530c080e0aa2754ccf20665aae4ee17aaa04` |
| 33 | `theorem` | [Periodic.sub_int_mul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-int-mul-eq.md) | 165 | `result-track:d2f65c46bd095ccc72dc1707709a6c63912a890bac03f70f05d584aba4ad87e5` |
| 34 | `theorem` | [Periodic.zsmul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-zsmul-sub-eq.md) | 168 | `result-track:49d20714b3b9074cb1767a2cd5a7bdfbbb5fa28c3f331b8ec200e6ca464bd831` |
| 35 | `theorem` | [Periodic.int_mul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-int-mul-sub-eq.md) | 172 | `result-track:7e8dec888d5198119985bd94d21fb244e7785d5deede355f5b448d1b02a62849` |
| 36 | `theorem` | [Periodic.eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-eq.md) | 176 | `result-track:cd0eae1c962ba913fc65e4fb3032f151307721552e59442f12e05324c2734140` |
| 37 | `theorem` | [Periodic.neg_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-neg-eq.md) | 179 | `result-track:9e9497d832cf5a019b90364d19e914511f57ef489318d7103bbc071a3b787d6e` |
| 38 | `theorem` | [Periodic.nsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-nsmul-eq.md) | 182 | `result-track:095b31ac116bcb1b9606320f4f02719a9f754a4255ab5bd7aa0a311a2a64de39` |
| 39 | `theorem` | [Periodic.nat_mul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-nat-mul-eq.md) | 185 | `result-track:046d5807cb3ec1b6e1aca8e4b829528270f7adaffbfb6ccdddc5dd8d4fb7a40f` |
| 40 | `theorem` | [Periodic.zsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-zsmul-eq.md) | 188 | `result-track:fb7882234863b3079eedea5b6c80d13e91b8fef5a8f64b14c14b13ee271b2276` |
| 41 | `theorem` | [Periodic.int_mul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-int-mul-eq.md) | 191 | `result-track:67545a78a3b93ff0d2fb3eaa7f20814fe9483fbb8f48460172d5132c53c62c24` |
| 42 | `theorem` | [periodic_with_period_zero](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-with-period-zero.md) | 194 | `result-track:ea1fc06237e358c1d34fef8d4b43666dc751a1c49f1675c35bada9c86675df9e` |
| 43 | `theorem` | [periodic_iterate_iff](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-iterate-iff.md) | 199 | `result-track:b588a11a8c4708f5925a024170993485f54d27b5c8621c3cc58063a04b2c4a48` |
| 44 | `theorem` | [Periodic.map_vadd_zmultiples](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-map-vadd-zmultiples.md) | 206 | `result-track:d0ca07dfa143c9f1f2fd74d15d89a9e603cc7514a55f44405427b6741181c186` |
| 45 | `theorem` | [Periodic.map_vadd_multiples](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-map-vadd-multiples.md) | 211 | `result-track:bc24d168a840befe062659c83f7d745cc243f02fef2e31f923c91a05722e2f04` |
| 46 | `def` | [Periodic.lift](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-lift.md) | 217 | `declaration-track:d8751ea2ac94ae8e3688649616342c3f9d0f60b81a045bec60ea2e1275bb1ba1` |
| 47 | `theorem` | [Periodic.lift_coe](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-lift-coe.md) | 224 | `result-track:b83e6ffd700eba0621ecc19982fdb6fc5301407e8cce9e073209743186d4b06b` |
| 48 | `lemma` | [Periodic.not_injective](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-not-injective.md) | 230 | `result-track:c4167869959c5a432a2be5c8b2017f859335be6f6e0c2a61d96b5b4d56b457a8` |
| 49 | `def` | [Antiperiodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic.md) | 238 | `declaration-track:d904c623fae642b5c49439dfe15fe88433382a217fd817f418150dfdad111794` |
| 50 | `theorem` | [Antiperiodic.funext](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-funext-source-edition-2.md) | 241 | `result-track:e82ff69345410a448b4aecc56c77382266b667fcef303e14e8b6f6a3b3912f69` |
| 51 | `theorem` | [Antiperiodic.funext'](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-funext.md) | 245 | `result-track:b9057110247ca964ffdc2a8bcd5cbb5988fbc36d8519be8c8f8107402c248aea` |
| 52 | `theorem` | [Antiperiodic.periodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-periodic.md) | 251 | `result-track:86234fa4e90aa7d1c337829df5394bb1c0f970cd0782415e2f6e000b6f8e1be1` |
| 53 | `theorem` | [Antiperiodic.periodic_two_mul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-periodic-two-mul.md) | 256 | `result-track:e02a24cfc73d0ddd4638c598cc76316f92910d920193b43caccf178d3f0b253c` |
| 54 | `theorem` | [Antiperiodic.eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-eq.md) | 259 | `result-track:38a2ad1085a7f22ea238408efbcf868f5edf901d1bba372dd240ec392dabf96b` |
| 55 | `theorem` | [Antiperiodic.even_nsmul_periodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-even-nsmul-periodic.md) | 262 | `result-track:743756ccf129547f6b6406b1465e5f51d85d72eee853a120f1aeb2b252c3c3ae` |
| 56 | `theorem` | [Antiperiodic.nat_even_mul_periodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-nat-even-mul-periodic.md) | 265 | `result-track:60c13c02b36809bb82eaf11e0b37c5ba2688b892dbdff2741424714159982f1c` |
| 57 | `theorem` | [Antiperiodic.odd_nsmul_antiperiodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-odd-nsmul-antiperiodic.md) | 269 | `result-track:def0d57fd297e3ab190fa891e5b45d3fbc20571fd2961fff34c6b2fcca06efa5` |
| 58 | `theorem` | [Antiperiodic.nat_odd_mul_antiperiodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-nat-odd-mul-antiperiodic.md) | 273 | `result-track:e64d76b00b152366b90597f05acf60423b7a89d9b18495220f74f282456dac4d` |
| 59 | `theorem` | [Antiperiodic.even_zsmul_periodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-even-zsmul-periodic.md) | 277 | `result-track:a6f944add98483ddec5e192a5b7d4e1b22b8d0c2f906beb08f29301da26d15e7` |
| 60 | `theorem` | [Antiperiodic.int_even_mul_periodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-int-even-mul-periodic.md) | 282 | `result-track:690aed773c0115f4ab0a18f7249d67afbac52d5ce9c7902e64c911a78c208f60` |
| 61 | `theorem` | [Antiperiodic.odd_zsmul_antiperiodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-odd-zsmul-antiperiodic.md) | 286 | `result-track:d932121823f9d4113121c9a6fc94bdb6e7b698352094fdf09be25d2f213d9d44` |
| 62 | `theorem` | [Antiperiodic.int_odd_mul_antiperiodic](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-int-odd-mul-antiperiodic.md) | 291 | `result-track:2fab3df6262d3ab4322077682c87b6b20671ee8b85b634869ddc8a8fe35dacb0` |
| 63 | `theorem` | [Antiperiodic.sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub-eq-source-edition-2.md) | 295 | `result-track:29270d1ddc20026c6b7b24719dc6fe98e2110cdf734f69daf26499e5622752a9` |
| 64 | `theorem` | [Antiperiodic.sub_eq'](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub-eq.md) | 298 | `result-track:0b224c61e15ee5775dd69381ada598f6bea45d6b259654344ff95a152b9cedde` |
| 65 | `theorem` | [Antiperiodic.neg](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-neg.md) | 301 | `result-track:b5151571904ec9f055b4f1d6cc00e673cd72ab8dce86bbafba356a6b7dff1e94` |
| 66 | `theorem` | [Antiperiodic.neg_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-neg-eq.md) | 304 | `result-track:3fc44d0d1d7df5a6a13817e0731992189e07416d9e492d156325f30820d0e928` |
| 67 | `theorem` | [Antiperiodic.nat_mul_eq_of_eq_zero](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-nat-mul-eq-of-eq-zero.md) | 308 | `result-track:b152e6a1a3c65327e15ca1eeb8d5d520d6f60a776d4774b5f7a4328f128f2cd7` |
| 68 | `theorem` | [Antiperiodic.int_mul_eq_of_eq_zero](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-int-mul-eq-of-eq-zero.md) | 313 | `result-track:cc26dde20cb11ece445ab0b5f293fae36d76b8e300c75ea0e9287cb765805e83` |
| 69 | `theorem` | [Antiperiodic.add_zsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-add-zsmul-eq.md) | 318 | `result-track:6ef1f1967caa730b373c3ba7c6c645bdba130cad175b8ef1e05399e34b412a2f` |
| 70 | `theorem` | [Antiperiodic.sub_zsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub-zsmul-eq.md) | 325 | `result-track:c9e365e14533dece7344da9d764dcfd5d7ad488e5cc1fbb4386042ef7cfb507e` |
| 71 | `theorem` | [Antiperiodic.zsmul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-zsmul-sub-eq.md) | 329 | `result-track:08230a34acff99680ea2af54781f68bb780dd3382dbfae093bb1aeba4053c359` |
| 72 | `theorem` | [Antiperiodic.add_int_mul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-add-int-mul-eq.md) | 334 | `result-track:f4e00c1b4d7e139f43466f0cedcff042d1146f2f863adbc821ec17ef34ee1a2e` |
| 73 | `theorem` | [Antiperiodic.sub_int_mul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub-int-mul-eq.md) | 338 | `result-track:1565c038ac66322166939513351a63a3d33b34ed09e4592eee7595bb480ec721` |
| 74 | `theorem` | [Antiperiodic.int_mul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-int-mul-sub-eq.md) | 342 | `result-track:d6a3dfe959486ef38397a60fe72c116d0f3e6e93f604ea44bd10c5f2867cd7cf` |
| 75 | `theorem` | [Antiperiodic.add_nsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-add-nsmul-eq.md) | 346 | `result-track:65ee3badb137d1dea2b7fe398ae561b2fa48c37558072685ae37102b6cd8cbb1` |
| 76 | `theorem` | [Antiperiodic.sub_nsmul_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub-nsmul-eq.md) | 354 | `result-track:8c1a6a1bf4067ae1bc91c2b1bba9d9072ba20818a9b6c75e123895ed77aeaa98` |
| 77 | `theorem` | [Antiperiodic.nsmul_sub_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-nsmul-sub-eq.md) | 358 | `result-track:41204898afe236d4e6d2667682ee5b2c7a66643de2538e752c75429e9368e60a` |
| 78 | `theorem` | [Antiperiodic.const_add](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-const-add.md) | 362 | `result-track:947c4fead9e671fbfb5657a6b1b9ba79b20e1c22fc0cda646ccb93ad025d4d50` |
| 79 | `theorem` | [Antiperiodic.add_const](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-add-const.md) | 365 | `result-track:5140673d6b0ae6ffa9279453ef26958828e3511af0b13e1f7d4f9dfc46cd20e3` |
| 80 | `theorem` | [Antiperiodic.const_sub](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-const-sub.md) | 369 | `result-track:e8e00b5f6ab4208a3d5bfd520012142cdd8abf4778e7199b13eef10402202925` |
| 81 | `theorem` | [Antiperiodic.sub_const](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub-const.md) | 373 | `result-track:6ddbf5111ff0760db2627fb85672402cebc09221101d78f549a07b66812804ec` |
| 82 | `theorem` | [Antiperiodic.smul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-smul.md) | 377 | `result-track:1e3fbd67fc5b2e4ccc1464bb88f81a061b186b2d8cdf82c66848d24213d865f1` |
| 83 | `theorem` | [Antiperiodic.const_smul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-const-smul.md) | 380 | `result-track:1ae633d0d30f294dbbf196aa212ff6a984261265b02e5e65fa1237fa9ae70ab3` |
| 84 | `theorem` | [Antiperiodic.const_inv_smul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-const-inv-smul.md) | 384 | `result-track:e4b215273b926f15fecf030cb258e9f658a7679957f12be9ad485de05f3469fe` |
| 85 | `theorem` | [Antiperiodic.add](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-add.md) | 388 | `result-track:060023175ffa19573d40dd389e3c46f0cdbc8966a704160b971a971f977cf445` |
| 86 | `theorem` | [Antiperiodic.sub](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sub.md) | 391 | `result-track:5f573aeb8637b8672b183cf7db502c471c8249661c6d87829d0075f62c382f17` |
| 87 | `theorem` | [Periodic.add_antiperiod](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-add-antiperiod.md) | 395 | `result-track:5042540fdd2a92f38576ccb00ed042b3095fb58cbfbb151123ba03bb32c8e731` |
| 88 | `theorem` | [Periodic.sub_antiperiod](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-antiperiod.md) | 398 | `result-track:6ce3a32758310373d22280cf79e767677477da379971771a10b378f3601a9d90` |
| 89 | `theorem` | [Periodic.add_antiperiod_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-add-antiperiod-eq.md) | 402 | `result-track:47e89be8ad5dcdafc9b412ca4b90f1620838c22f1b293924c3f1ce384a4ba254` |
| 90 | `theorem` | [Periodic.sub_antiperiod_eq](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/periodic-sub-antiperiod-eq.md) | 406 | `result-track:48a195bea86a89c483aeaecbf01e61fdf7f71e44a16a6e0cd7bc615643f6cf4e` |
| 91 | `theorem` | [Antiperiodic.mul](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-mul.md) | 410 | `result-track:8abce42ff94b7004de61a57e9682e8ed1e00c92f0d324f4d8b72ab9a2e607229` |
| 92 | `theorem` | [Antiperiodic.div](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-div.md) | 413 | `result-track:37266f9bf74f9f21293c624558a07bfef3261f2a3777dc2849c959352b0a1f00` |
| 93 | `theorem` | [Antiperiodic.sum_map_addRightEmbedding](../../../../AssociativeRingsAndAlgebras/RingPeriodicPublic.lean/declarations/antiperiodic-sum-map-addrightembedding.md) | 418 | `result-track:7fcf26fa054e7724c1ef6ec02a62c67d4009cae494160d13045ddabf983c5693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e70bffa8c507fcc96b1d6619e442cf80cdd61d14ecfb50b1a42cf907fb5797ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Periodic/Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Periodic/Variant6b402360ebbc1ad95a1cbbd40ddb1f6fb7bf57941dcf15fab5402be30d8507c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
