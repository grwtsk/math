# Verification target: GRWTSK.Topology.MetricTopology.Hensel.Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e2d86ca0e264876788b1dd9c5f612070343e36",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e2d86ca0e264876788b1dd9c5f612070343e36`.

Source path: `GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Identities` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicIntegers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [padic_polynomial_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/padic-polynomial-dist--3fb410250a5361f413c99592.md) | 50 | `result-track:3fb410250a5361f413c9959266824d99980a0f6c45510434023f8ec93e0a8c6f` |
| 2 | `theorem` | [comp_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/comp-tendsto-lim--35af96956f3fe21d7ab1a64d.md) | 62 | `result-track:35af96956f3fe21d7ab1a64dcd13e8fe34baef016e41e2f1e4ad9a5b841894f1` |
| 3 | `theorem` | [ncs_tendsto_const](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/ncs-tendsto-const--2732b284bb229e2f7f31e0f4.md) | 72 | `result-track:2732b284bb229e2f7f31e0f4d480bc799c2dc8f587be920582fb96dd33257283` |
| 4 | `theorem` | [ncs_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/ncs-tendsto-lim--0dc3ee7fc0da819456841064.md) | 76 | `result-track:0dc3ee7fc0da8194568410644968dc5cea4c2623944c45d28ee880342631d560` |
| 5 | `theorem` | [norm_deriv_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/norm-deriv-eq--2c328f16e65767722fd6ef9f.md) | 80 | `result-track:2c328f16e65767722fd6ef9fb0a4ff8a99cf0c6712a245e62aa6a1782b7a88da` |
| 6 | `theorem` | [tendsto_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/tendsto-zero-of-norm-tendsto-zero--6c6dfee892695ef0e22f59d1.md) | 91 | `result-track:6c6dfee892695ef0e22f59d13205c9764712c09e9e38389815565fc3d0dd0183` |
| 7 | `theorem` | [limit_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/limit-zero-of-norm-tendsto-zero--d8ab8ed764659410de78d65c.md) | 94 | `result-track:d8ab8ed764659410de78d65cc4cd0d50e251a4a2d657b61231027b3f47ea1968` |
| 8 | `def` | [T_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-gen--e0ff72e501647dcdaa0ac8f9.md) | 110 | `declaration-track:e0ff72e501647dcdaa0ac8f96a011f99e504b1d43259b7a02b066c3a9d1b82ea` |
| 9 | `theorem` | [deriv_sq_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/deriv-sq-norm-pos--797a77ecc2f7d625357e1379.md) | 116 | `result-track:797a77ecc2f7d625357e1379c6d03edb55ec89d6509b4b3fc2b0f0f363c50316` |
| 10 | `theorem` | [deriv_sq_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/deriv-sq-norm-ne-zero--b7a716edd5057f079c88fcea.md) | 119 | `result-track:b7a716edd5057f079c88fcead288f2e7992dbd945b7b51241da6018fbbf8b238` |
| 11 | `theorem` | [deriv_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/deriv-norm-ne-zero--96d8048325aeb0e951e9576b.md) | 122 | `result-track:96d8048325aeb0e951e9576b4adda8b376231cb9f37ecf4717b131787166a657` |
| 12 | `theorem` | [deriv_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/deriv-norm-pos--33c6eeed2a66c2cf391bbc08.md) | 125 | `result-track:33c6eeed2a66c2cf391bbc08e221ea9cf89a6df8e6add58db099c256055261cf` |
| 13 | `theorem` | [deriv_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/deriv-ne-zero--95cc7dffe0c49fe1becd8192.md) | 128 | `result-track:95cc7dffe0c49fe1becd819234f702b459b3eedbfdc73a02a43a6dcd15d61722` |
| 14 | `theorem` | [T_def](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-def--d62a8f034b8ecbc5594ba3c2.md) | 131 | `result-track:d62a8f034b8ecbc5594ba3c21faae3941a8ec83722b9548360616e867a86c667` |
| 15 | `theorem` | [T_lt_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-lt-one--55228e1247c501755372934f.md) | 134 | `result-track:55228e1247c501755372934ffe9e56f941163f9cf2928dd70be1a8964034567a` |
| 16 | `theorem` | [T_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-nonneg--83a6ab4a45a686f04de00490.md) | 138 | `result-track:83a6ab4a45a686f04de00490441a5ddc3308e831ff5bd6a590d479dd98b2c5da` |
| 17 | `theorem` | [T_pow_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-pow-nonneg--37a17f7ec958101df75d97fe.md) | 140 | `result-track:37a17f7ec958101df75d97fe85e6450353c97b249f132cef4ec79955415b9f66` |
| 18 | `theorem` | [T_pow](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-pow--d92901ea8223839d43cfff1f.md) | 142 | `result-track:d92901ea8223839d43cfff1f11c70dddb2d94f15b845a785eee4946a2017a6c5` |
| 19 | `theorem` | [T_pow'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-pow--ab85f04259e9920fecd80bde.md) | 144 | `result-track:ab85f04259e9920fecd80bde74ec043a613e329f4bbf373780d45596bfad89c0` |
| 20 | `def` | [ih_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/ih-gen--8a7614bcea74c89fe3e08ea2.md) | 148 | `declaration-track:8a7614bcea74c89fe3e08ea28ff53cc457e2c2b1effb4cc35b760375a42e3167` |
| 21 | `theorem` | [ih_0](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/ih-0--ff093206f621c0948730061c.md) | 153 | `result-track:ff093206f621c0948730061cd906092d8f686601890269e7f8c5e20753ede736` |
| 22 | `theorem` | [calc_norm_le_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/calc-norm-le-one--29f0324a7bafc240159c66b3.md) | 156 | `result-track:29f0324a7bafc240159c66b3d7c258d164be35edceb94ca13d323ca803d56fb5` |
| 23 | `theorem` | [calc_deriv_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/calc-deriv-dist--679436e3f11603e84ba1da01.md) | 170 | `result-track:679436e3f11603e84ba1da011c311afabbd50590d30a73e369aa98d371181b64` |
| 24 | `def` | [calc_eval_z'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/calc-eval-z--ce9d2f90955224e1423a1c43.md) | 185 | `declaration-track:ce9d2f90955224e1423a1c434c057b7d95939fd0e6f959b6099e440b8d58f4e2` |
| 25 | `def` | [calc_eval_z'_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/calc-eval-z-norm--b568f530f273378c09d0ae73.md) | 208 | `declaration-track:b568f530f273378c09d0ae73e90a3a5c37fc1679aff72bcea456042a0fef897d` |
| 26 | `def` | [ih_n](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/ih-n--0bda4405ce468e9bf8fb5b1c.md) | 229 | `declaration-track:0bda4405ce468e9bf8fb5b1cb57e495ea82036f29cacc8fe2d8c330b8bf1cadd` |
| 27 | `def` | [newton_seq_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-aux--b71d3dc49ce5483ead2980ea.md) | 248 | `declaration-track:b71d3dc49ce5483ead2980ea5da676e97a0396f4089f559213526c474f1bace1` |
| 28 | `def` | [newton_seq_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-gen--9f6cbca51b08424eee1442ac.md) | 253 | `declaration-track:9f6cbca51b08424eee1442ac0d698fbfd1fd3ecaaec218969e7f2f72ac87bcbf` |
| 29 | `theorem` | [newton_seq_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-deriv-norm--a3370bfd1b9149af55beef86.md) | 258 | `result-track:a3370bfd1b9149af55beef8654b9dae4c7dd666588bcb398c2e3a995b92aa832` |
| 30 | `theorem` | [newton_seq_norm_le](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-norm-le--af7f27d731688b4247cd2cc6.md) | 262 | `result-track:af7f27d731688b4247cd2cc624f03f9af94b3fcbe8626ee7037b972d5031aa37` |
| 31 | `theorem` | [newton_seq_norm_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-norm-eq--2493ecacc0aa2333c4004dbb.md) | 266 | `result-track:2493ecacc0aa2333c4004dbb68d4442b28f5bf13c77d001e2f57e138babd9dd0` |
| 32 | `theorem` | [newton_seq_succ_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-succ-dist--8f2d0b7af8543329e4580c61.md) | 272 | `result-track:8f2d0b7af8543329e4580c61b698e748913764e1d73a10477a71e561d2705103` |
| 33 | `theorem` | [T_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/t-pos--be0248bd20a6fbf7ef5554dd.md) | 283 | `result-track:be0248bd20a6fbf7ef5554dd38f00e972adf5a6f9b41402f719624d7423e7ced` |
| 34 | `theorem` | [newton_seq_succ_dist_weak](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-succ-dist-weak--4eea0b5660d619bf91cf21f2.md) | 287 | `result-track:4eea0b5660d619bf91cf21f24acd7da04ac7a1e9b84d8743da2553e7bfe28498` |
| 35 | `theorem` | [newton_seq_dist_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-dist-aux--b574a1ff85b26820cecc8905.md) | 307 | `result-track:b574a1ff85b26820cecc89055890c099801a2cf774d6e6a29e76b16390796431` |
| 36 | `theorem` | [newton_seq_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-dist--3a0eb04243c6ef91aa27422c.md) | 330 | `result-track:3a0eb04243c6ef91aa27422c286f38dcf56aaf7fc10f11c1744b7ec696381172` |
| 37 | `theorem` | [newton_seq_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-dist-to-a--e382fc297d31d94e1f644cb0.md) | 336 | `result-track:e382fc297d31d94e1f644cb017718b5c6ab7fb3964d5b50acd0ac20b558de522` |
| 38 | `theorem` | [bound'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/bound--d5c63c4e797e9b307da4bcbc.md) | 354 | `result-track:d5c63c4e797e9b307da4bcbc8446ce5ae86747353e0b13a28103823fbbf842e6` |
| 39 | `theorem` | [bound](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/bound--78d02f182de0bd6df36fbdbb.md) | 361 | `result-track:78d02f182de0bd6df36fbdbbc5ac1c39fe5f82eb8ae9c18b2939170fabd5e3e4` |
| 40 | `theorem` | [bound'_sq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/bound-sq--60081ebe09ca9f69439e50de.md) | 370 | `result-track:60081ebe09ca9f69439e50de04f22a349139fe71a4b6d2369ab5eb16a1bce953` |
| 41 | `theorem` | [newton_seq_is_cauchy](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-is-cauchy--983fd5f532cad1d99515a806.md) | 379 | `result-track:983fd5f532cad1d99515a8064041a4751f7cd7a1cf6691c381bb0811897e1353` |
| 42 | `def` | [newton_cau_seq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-cau-seq--46377cb3ec17e0c85db75578.md) | 389 | `declaration-track:46377cb3ec17e0c85db75578a1168a018ff2b8ae571c46d5a299e86bd2c640f3` |
| 43 | `def` | [soln_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/soln-gen--9884d3af1c6df335c88161de.md) | 392 | `declaration-track:9884d3af1c6df335c88161dec27e25f503ac45435cc3f92971e9f5ac616ac8ec` |
| 44 | `theorem` | [soln_spec](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/soln-spec--d0319d887f30f794c2e202ba.md) | 396 | `result-track:d0319d887f30f794c2e202ba548ecd0ab6bbf4fe27b8287ffe06005584f982b2` |
| 45 | `theorem` | [soln_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/soln-deriv-norm--6e217f14c29cedb4254f5c26.md) | 400 | `result-track:6e217f14c29cedb4254f5c26004e844500ee71960baec739614fa931996ff0a4` |
| 46 | `theorem` | [newton_seq_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-norm-tendsto-zero--da3af8c3df4031ddc0368fd9.md) | 403 | `result-track:da3af8c3df4031ddc0368fd9ec1529a01c9f90797c2fb16a49756275ad1d3377` |
| 47 | `theorem` | [newton_seq_dist_tendsto](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-dist-tendsto--02f06d264003b4541d5a8ce2.md) | 407 | `result-track:02f06d264003b4541d5a8ce234a603f04a0a96d26c793483e24ec355498a312a` |
| 48 | `theorem` | [newton_seq_dist_tendsto'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/newton-seq-dist-tendsto--ae5ea8927a9ac6b06dac24b1.md) | 413 | `result-track:ae5ea8927a9ac6b06dac24b12dbb11d8e424bc8ebcb59d80ab630c405646f7a8` |
| 49 | `theorem` | [soln_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/soln-dist-to-a--7d83ca47e8fce41e31be4b19.md) | 417 | `result-track:7d83ca47e8fce41e31be4b196ff3992eb1b6ebbb3c83d24cf19bfe26657b1972` |
| 50 | `theorem` | [soln_dist_to_a_lt_deriv](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/soln-dist-to-a-lt-deriv--fa64020f3cc8a2c35dc34895.md) | 420 | `result-track:fa64020f3cc8a2c35dc34895362d94bef1b39fc95fb0ff827fdbb9b8915c54dd` |
| 51 | `theorem` | [eval_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/eval-soln--469b784aebd995dc15f26b42.md) | 427 | `result-track:469b784aebd995dc15f26b4263f4717ce8b567b35465f1430130f9bd7a685b5c` |
| 52 | `theorem` | [soln_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/soln-unique--1e6ac2f83be255d28bf92ead.md) | 430 | `result-track:1e6ac2f83be255d28bf92eaddf287e1f28647f12d47ef3dc175c345b1334a3e9` |
| 53 | `theorem` | [a_soln_is_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/a-soln-is-unique--e30f651af40c9d3ec950475e.md) | 468 | `result-track:e30f651af40c9d3ec950475e4104a73cf38c78dfd490b25c5bc77f07b46ef53d` |
| 54 | `theorem` | [a_is_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/a-is-soln--20e567140f56f1e38a915436.md) | 494 | `result-track:20e567140f56f1e38a915436006548b1209aaefded65cd0c1f2d0ec45b75b817` |
| 55 | `theorem` | [hensels_lemma](../../../../../mathematics/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/declarations/hensels-lemma--9a8fe4bcee408ca80afd573d.md) | 501 | `result-track:9a8fe4bcee408ca80afd573dbf0beda9c42371c044269a43734768cf6bc418e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
