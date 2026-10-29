# Verification target: Ideal Quotient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "619506e8ca5f79eb54d81c4542f7c92587cc90c5",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `619506e8ca5f79eb54d81c4542f7c92587cc90c5`.

Source path: `GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:46e47829b8ba0edd6a23eb0b3d2ef06cf2e23335285ab00454d527030af32355` |
| 2 | `instance` | [one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/one.md) | 68 | `declaration-track:84693f9396b7eb782047af5bade610ade989dfbdf66b1d7b04e6bc7b366fe6f4` |
| 3 | `def` | [ringCon](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/ringcon.md) | 73 | `declaration-track:699693aaab13f1e1f824c0e0277a129ac9d4fd367ef188125a179b5e96aa2556` |
| 4 | `instance` | [commRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/commring.md) | 83 | `declaration-track:7534362598ab91c93243c787f071bf2e1846f3c89b8f497ba5430517ac8b97cd` |
| 5 | `example` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/example.md) | 88 | `declaration-track:fb72aaae61387b5caaf04c5a824ab6f9313f8c728a9fa135d92b3f441af524ce` |
| 6 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/instance-source-edition-5.md) | 91 | `declaration-track:a19c02c0108f7196b6bef24464fb2d9703bae70c4c5cbe9abe0766b5cc25adfd` |
| 7 | `instance` | [smulCommClass](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/smulcommclass-source-edition-2.md) | 96 | `declaration-track:65da8a2d535e991e6d83bb9abfce4816e0c448b9375a2dba7d3ccf1e8169c93c` |
| 8 | `instance` | [smulCommClass'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/smulcommclass.md) | 101 | `declaration-track:084bee0df9a00969963d89297ca772ee3bfe85272a61025d53c53f43fcab55f9` |
| 9 | `def` | [mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/mk.md) | 107 | `declaration-track:aec12bf990be8ff229d31e833bbb5b47abc08b123bbe0e732c79c6e6c7aae880` |
| 10 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:9f25dc5a24fc5ddf96328a1e7936b7a1614f26a0b1d786ea6caacf3d65285371` |
| 11 | `theorem` | [ringHom_ext](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/ringhom-ext.md) | 123 | `result-track:1648be56838188be9b49a7abaa491b984b71b0a95239f06ed7d28699a128c668` |
| 12 | `instance` | [inhabited](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/inhabited.md) | 128 | `declaration-track:daccb02fb2b3fd74e767c8506e3ab3138b7530ae5b6b39d72c4867d6a517be45` |
| 13 | `theorem` | [eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/eq.md) | 132 | `result-track:5f101c7d676756cc476606119d61176731bd882bffcfe6d479ba27239c123941` |
| 14 | `theorem` | [mk_eq_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/mk-eq-mk.md) | 137 | `result-track:cd571032939d5c03ee8ea99ab35bd2b2f1ef4f375bb119067c28dfcf770bb369` |
| 15 | `theorem` | [eq_zero_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/eq-zero-iff-mem.md) | 140 | `result-track:24722170ff8291c4059afe9968567e7d4406ceaca36597a8098948f60a8b53a1` |
| 16 | `theorem` | [mk_eq_mk_iff_sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/mk-eq-mk-iff-sub-mem.md) | 145 | `result-track:4027da359956a916879731902f816b84b21bac305197e13f31d1b643aef49649` |
| 17 | `theorem` | [zero_eq_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/zero-eq-one-iff.md) | 148 | `result-track:345dfcd9ed736ab8720eb4b600b09ab78999ed9588217d7953589ba27181ce65` |
| 18 | `theorem` | [zero_ne_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/zero-ne-one-iff.md) | 152 | `result-track:ca11d22d731691d5cf38af8f0c6ba27990353ae3625b41602e7ba4bdaebff071` |
| 19 | `theorem` | [nontrivial](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/nontrivial.md) | 156 | `result-track:6dbc88c4da0f29962f63c2453461711b83da7a221d9b487817379799d41d4f61` |
| 20 | `theorem` | [subsingleton_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/subsingleton-iff.md) | 160 | `result-track:68aa4b9ea46cd3b621b067d50a96b131f61c406aedb7c473e2d08c9e073f8da8` |
| 21 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/instance-source-edition-3.md) | 165 | `declaration-track:730252cd2a33a74cba882c39f6257f78b799f83b567f59d0fcc27d1b4e1e1319` |
| 22 | `theorem` | [mk_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/mk-surjective.md) | 168 | `result-track:ad5fb724e25d8b8ec931d8448500082d5a5ff224a5fa76a03bb1cf0d14b2ca71` |
| 23 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/instance.md) | 172 | `declaration-track:35f2e0ce3b1d538ee0b662b2c896a331ed1f9c8173c90c5b074a1107b298f490` |
| 24 | `theorem` | [quotient_ring_saturate](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotient-ring-saturate.md) | 177 | `result-track:63b83afc335ad715123ff2c90461cce6e879ef926ac07653f06bd8a70c8eeaf9` |
| 25 | `instance` | [noZeroDivisors](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/nozerodivisors.md) | 186 | `declaration-track:73d9e4c564388eb053e442edd43b19b59edfd2ad7c4ff28a31a95f553dc34c90` |
| 26 | `instance` | [isDomain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/isdomain.md) | 192 | `declaration-track:51f0031be9ccd1db230eb9579efc30f33da183b3dc86734a5ab7bde5aa23d9b9` |
| 27 | `theorem` | [isDomain_iff_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/isdomain-iff-prime.md) | 197 | `result-track:c805f82c2efe332032debfb6b7d0ebdeb9258d27a52fd45eafd45e51d74896f0` |
| 28 | `theorem` | [exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/exists-inv.md) | 206 | `result-track:351c6c51f51f274fb28d3ada1ae584a568d824d2e9976d8f06b4a894412a1206` |
| 29 | `def` | [groupWithZero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/groupwithzero.md) | 224 | `declaration-track:c282d9852eff79222c22df49f59d9087dc4f2c2b575929b43cb03d02b3831ba5` |
| 30 | `def` | [field](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/field.md) | 237 | `declaration-track:c6bb3cc107b0c5ca76d35d6486817f6705c0cd03e7bdf75566a6b4326491f6bf` |
| 31 | `theorem` | [maximal_of_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/maximal-of-isfield.md) | 242 | `result-track:e56b860f38d7338c0b8bcf779f2a7bb6e7c8853500b80915e1aed068a3135d0d` |
| 32 | `theorem` | [maximal_ideal_iff_isField_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/maximal-ideal-iff-isfield-quotient.md) | 255 | `result-track:c22cdfa6125068ed5d0be84883913c905d8405d069f57c5a1d843e05ce05340e` |
| 33 | `def` | [lift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/lift.md) | 266 | `declaration-track:a17d72c5c3412cd1c8829a692b11df9f9c6af56af2ebca69e7f5df908c6f97e7` |
| 34 | `theorem` | [lift_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/lift-mk.md) | 275 | `result-track:f762671e921661c07e8f62034c879aed7fa68a3a172849ecf13c2d86688e073e` |
| 35 | `theorem` | [lift_surjective_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/lift-surjective-of-surjective.md) | 280 | `result-track:bef925a9ddae8383b9a16dae640c927321fddf08d7967ca92028aefc9d13bebe` |
| 36 | `def` | [factor](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/factor.md) | 291 | `declaration-track:45977696489f8d230e997bd2eb78423ce524b0745f5d88dcc6e8c05daef5aef4` |
| 37 | `theorem` | [factor_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/factor-mk.md) | 296 | `result-track:117bec12d8d38be5efe76d2a77d3f569ea29d189b4c9eaaaab8def5fd538511b` |
| 38 | `theorem` | [factor_comp_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/factor-comp-mk.md) | 301 | `result-track:ab1c9b2ef0fa334d0fc09fce8943340ce7465a105d880438b4e74be6563adaea` |
| 39 | `def` | [quotEquivOfEq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotequivofeq.md) | 312 | `declaration-track:4f918673ca5c251138f8190ee4149bfc0245f62145fd7ad27f14a6bea6a4095c` |
| 40 | `theorem` | [quotEquivOfEq_mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotequivofeq-mk.md) | 320 | `result-track:8145277e6a364230022fe33e05203b6436331e3e915037a9152ecdf75fbcb023` |
| 41 | `theorem` | [quotEquivOfEq_symm](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotequivofeq-symm.md) | 326 | `result-track:182925b0a0360a29a8dd160d6f6f8dcb0b2b4a27529a07abffd1f7b7b47386d2` |
| 42 | `instance` | [modulePi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/modulepi.md) | 335 | `declaration-track:c0e464fcb904777e834c3b2b123a079bd60efa863f207d8a9a2d65c243e05265` |
| 43 | `def` | [piQuotEquiv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/piquotequiv.md) | 370 | `declaration-track:13ecec0f5c35cae75abcd791bb9db70bd1c9005e2fa3afde3a05de855e8b2bce` |
| 44 | `theorem` | [map_pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/map-pi.md) | 389 | `result-track:00076f664b393dc7c1ec635ed15de64498efd852739b718cfc5bdd8f41f00519` |
| 45 | `theorem` | [exists_sub_one_mem_and_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/exists-sub-one-mem-and-mem.md) | 404 | `result-track:558d61c97eae7552fc85aef64da6057dec78deb2abddb7ac5f2e112448c40195` |
| 46 | `theorem` | [exists_sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/exists-sub-mem.md) | 446 | `result-track:dc320b5c063559fa197f6373f51395f43d9754a272c87ed12cd8194144c0e817` |
| 47 | `def` | [quotientInfToPiQuotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotientinftopiquotient.md) | 471 | `declaration-track:71161271a67e7790a08630ed2cec1e3fd4b1e28a54d16d18e411b9cf189ca0dd` |
| 48 | `theorem` | [quotientInfToPiQuotient_bijective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotientinftopiquotient-bijective.md) | 478 | `result-track:2a165b430c1382664b40c0fe1fc52db67f9e7debcaf17df03ffaa36e32bdb6da` |
| 49 | `def` | [quotientInfRingEquivPiQuotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotientinfringequivpiquotient.md) | 492 | `declaration-track:9e5f33d6bc1ee3439fe5b7ebd91dea0a428fc42d1b2881d6627242bbc1bbbac0` |
| 50 | `def` | [quotientInfEquivQuotientProd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotientinfequivquotientprod.md) | 500 | `declaration-track:e061d87787608d09291b3d7552537e0ed0f2670e754757800454cd09f2d04b17` |
| 51 | `theorem` | [quotientInfEquivQuotientProd_fst](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotientinfequivquotientprod-fst.md) | 513 | `result-track:2665a3317086692f254e3398b327e5cb04c9e8c206d24cadc79fcc770d5f8121` |
| 52 | `theorem` | [quotientInfEquivQuotientProd_snd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/quotientinfequivquotientprod-snd.md) | 520 | `result-track:5229b7b42de6f3a206cab89c2ba4e2ae848a11a4144c6fb0090abda18ddd7edb` |
| 53 | `theorem` | [fst_comp_quotientInfEquivQuotientProd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/fst-comp-quotientinfequivquotientprod.md) | 527 | `result-track:74a55781b9e777e0793e8c644b73539cf450eaefea4728c3c5f6f420bbc02a85` |
| 54 | `theorem` | [snd_comp_quotientInfEquivQuotientProd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientNamespaced.lean/declarations/snd-comp-quotientinfequivquotientprod.md) | 535 | `result-track:ebda67bd92398b9c15b1869e3d258ba2e420c73bd50381d7a4c71b2362c049d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6652765c3b3467f19909284d955c14a3c8ce75282a3e4d7b9931cfa71b71ec30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean","GRWTSK/_verification/specifications/Algebra/Quotient/Variant474a0196ef054b83fe8fc4104edf892552fd28db216efd369a5750bd4f8d3e3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
