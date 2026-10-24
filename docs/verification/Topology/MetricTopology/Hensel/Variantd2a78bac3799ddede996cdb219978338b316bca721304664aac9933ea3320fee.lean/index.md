# Verification target: GRWTSK.Topology.MetricTopology.Hensel.Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c224974f1fc239b94204da27cef603b6a1601a08",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c224974f1fc239b94204da27cef603b6a1601a08`.

Source path: `GRWTSK/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Identities` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicIntegers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [padic_polynomial_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/padic-polynomial-dist--274193e35cb8449009596afa.md) | 48 | `result-track:274193e35cb8449009596afa860d18e3aa48b1d3e8fe93f18e0a99e33bd74b60` |
| 2 | `theorem` | [comp_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/comp-tendsto-lim--2e724864a10548d368790136.md) | 58 | `result-track:2e724864a10548d3687901367f2d7bbb2bc0a85147499a5c82f9ca9ca2bf2d47` |
| 3 | `theorem` | [ncs_tendsto_lim](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/ncs-tendsto-lim--d92de76ff332e3bb6c0c3f4f.md) | 67 | `result-track:d92de76ff332e3bb6c0c3f4f79584e4c47c4d8d44ab2f68427b2262be70ffe22` |
| 4 | `theorem` | [ncs_tendsto_const](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/ncs-tendsto-const--3ee71623501b2a2729e100b7.md) | 73 | `result-track:3ee71623501b2a2729e100b7eba7fe9cd26a1aab53d0ef7a098d5d03dffc0831` |
| 5 | `theorem` | [norm_deriv_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/norm-deriv-eq--f8940463bc60b02e2ff4c35a.md) | 77 | `result-track:f8940463bc60b02e2ff4c35a03fa12e922be77d8d6150524f05ec5ef8c944e92` |
| 6 | `theorem` | [tendsto_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/tendsto-zero-of-norm-tendsto-zero--37acf9aaa9201816d47eaf52.md) | 89 | `result-track:37acf9aaa9201816d47eaf5281808150fcd166c4cd439d9db12bd055c2bd70f4` |
| 7 | `theorem` | [limit_zero_of_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/limit-zero-of-norm-tendsto-zero--74765084cc6a9e849db809d7.md) | 92 | `result-track:74765084cc6a9e849db809d754ec018dd6cfb32e7ccf3709175dfa0ed39262a9` |
| 8 | `def` | [T_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-gen--2d52b8e323af1560b3496e8a.md) | 104 | `declaration-track:2d52b8e323af1560b3496e8a1b702edf8d20c0763320797bf496e4c45bccb64a` |
| 9 | `theorem` | [T_def](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-def--4eff2994c2cb7040a1eeee9b.md) | 110 | `result-track:4eff2994c2cb7040a1eeee9b4456ce8bab91f2bc74cba8c23f552028647cb32d` |
| 10 | `theorem` | [T_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-nonneg--646b4dafb61bc9e0b6b56319.md) | 113 | `result-track:646b4dafb61bc9e0b6b5631974f57dda6d141479cb56425e0a50af412a6444fc` |
| 11 | `theorem` | [T_pow_nonneg](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-pow-nonneg--bd072906c01965bb2e548bda.md) | 115 | `result-track:bd072906c01965bb2e548bda19ba9db8b3f6c36566c66dacb7d6bb5218a972e2` |
| 12 | `theorem` | [deriv_sq_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/deriv-sq-norm-pos--7e56ca36faec0177694c5ef0.md) | 120 | `result-track:7e56ca36faec0177694c5ef05efe82bcee9b494c14d009ccae02b463b0e65ce5` |
| 13 | `theorem` | [deriv_sq_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/deriv-sq-norm-ne-zero--be47f92166df9c1bbdb2c709.md) | 123 | `result-track:be47f92166df9c1bbdb2c70932335ed91219d84183e0a27bdce422b5530de9cf` |
| 14 | `theorem` | [deriv_norm_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/deriv-norm-ne-zero--86b4d0c4b6fa5c505ee6a2e8.md) | 126 | `result-track:86b4d0c4b6fa5c505ee6a2e8d718e2d9eb9758ab96b6ce30370fe24ac9dde2f6` |
| 15 | `theorem` | [deriv_norm_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/deriv-norm-pos--fa50f8c2f7023f1bc516c74e.md) | 129 | `result-track:fa50f8c2f7023f1bc516c74e433b051aad9b98d979cbb83c8185172dfd395005` |
| 16 | `theorem` | [deriv_ne_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/deriv-ne-zero--2213346707bdb6934a5de750.md) | 132 | `result-track:2213346707bdb6934a5de7502938d7a2d14d067edfe0836a0a5f13a2ffca6e45` |
| 17 | `theorem` | [T_lt_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-lt-one--b320e945989e53d39388c73e.md) | 136 | `result-track:b320e945989e53d39388c73e0d03f337603fc025bddfd22d9decb10efa1ffcb4` |
| 18 | `theorem` | [T_pow](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-pow--050a31163a73a7e2d610aa2b.md) | 140 | `result-track:050a31163a73a7e2d610aa2b77397dab4de83a5a229efe6abcfc4e649a4c9235` |
| 19 | `theorem` | [T_pow'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-pow--80184eb66fed6f00d13f2a80.md) | 142 | `result-track:80184eb66fed6f00d13f2a80c4f489eb7359001ca780d1f24beaca8923498c43` |
| 20 | `def` | [ih_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/ih-gen--220183ddc9ce81cebdbdf4a0.md) | 145 | `declaration-track:220183ddc9ce81cebdbdf4a0bd99f320c0a399fba91ebc644f352e69d8cf5dbb` |
| 21 | `theorem` | [ih_0](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/ih-0--c508f0422314bce9aff564d9.md) | 150 | `result-track:c508f0422314bce9aff564d92fe994b36397959be9fb07d96aff0731919ef8fa` |
| 22 | `theorem` | [calc_norm_le_one](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/calc-norm-le-one--dbe48505606e27eb7be26574.md) | 153 | `result-track:dbe48505606e27eb7be26574703f4cdd288fdc3c9974a886eda31936f7632239` |
| 23 | `theorem` | [calc_deriv_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/calc-deriv-dist--819392bae989fe1ee1ca1dfe.md) | 167 | `result-track:819392bae989fe1ee1ca1dfe9ed4bf14d0f624ba2e299d6c3e4fa2208a7ae0ec` |
| 24 | `def` | [calc_eval_z'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/calc-eval-z--678ac252c62a1e1716ab3ed3.md) | 182 | `declaration-track:678ac252c62a1e1716ab3ed376c808e8d8921f013c4450f2f35f3f68fbdd7013` |
| 25 | `def` | [calc_eval_z'_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/calc-eval-z-norm--6045dd6b027a5e6e7415269e.md) | 203 | `declaration-track:6045dd6b027a5e6e7415269e99fc2fec1f6083bf502a145b0540dee5ccbbb587` |
| 26 | `def` | [ih_n](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/ih-n--0a5432dd3a6bc495b5785480.md) | 221 | `declaration-track:0a5432dd3a6bc495b5785480278219d54b7b427563b03ee45361f6b28f66e172` |
| 27 | `def` | [newton_seq_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-aux--e71786ca0eb3b39cff43a3b8.md) | 237 | `declaration-track:e71786ca0eb3b39cff43a3b8cfbfc3dc78ab3d9d14c5ac1c6dcd961f9bd5d567` |
| 28 | `def` | [newton_seq_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-gen--fb57c18063bf7f77420eef5d.md) | 241 | `declaration-track:fb57c18063bf7f77420eef5d83f995d2bbd5706f69b0e3445eaffe77cd03ce45` |
| 29 | `theorem` | [newton_seq_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-deriv-norm--95c9f2f63c8b28b506f0eef3.md) | 246 | `result-track:95c9f2f63c8b28b506f0eef3dd7156d558bdb8d3cfbd33a7f9615ec0fc3ff4a2` |
| 30 | `theorem` | [newton_seq_norm_le](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-norm-le--7859d7cf5afb67814eb3c05b.md) | 250 | `result-track:7859d7cf5afb67814eb3c05b8f77b693658c8c22daf59b7450ed690f9cc3849e` |
| 31 | `theorem` | [newton_seq_norm_eq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-norm-eq--d18b6517392936d910284423.md) | 254 | `result-track:d18b6517392936d9102844239d9d04a7275b686cda4c256bf3014c160013b405` |
| 32 | `theorem` | [newton_seq_succ_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-succ-dist--142faf35294f2713ea307fbb.md) | 260 | `result-track:142faf35294f2713ea307fbbb85ca59743879d428899e1b5569a36f3fe162e07` |
| 33 | `theorem` | [newton_seq_dist_aux](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-dist-aux--9b17280ad2bb37defe01282c.md) | 271 | `result-track:9b17280ad2bb37defe01282c4896c64b4a073e09f1db2822c1c837aa42fe096e` |
| 34 | `theorem` | [newton_seq_dist](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-dist--7d90d10b4006f30541cdf4f2.md) | 293 | `result-track:7d90d10b4006f30541cdf4f21b6766d1ad0c3b4bd415963673484a097a0cbaef` |
| 35 | `theorem` | [bound'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/bound--1885bcc426a0cc17b9d126cd.md) | 299 | `result-track:1885bcc426a0cc17b9d126cdd6617ff4987086895f7807e16bf213515a6cb4b6` |
| 36 | `theorem` | [bound](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/bound--53e01e2d43251ed84341b87b.md) | 306 | `result-track:53e01e2d43251ed84341b87b8f8a344af0f4618e6c7261a18142d2a490dfe5e6` |
| 37 | `theorem` | [bound'_sq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/bound-sq--ca7101c33e8298965194de66.md) | 310 | `result-track:ca7101c33e8298965194de664427f40c69d54ec34c27902185949a2f42750360` |
| 38 | `theorem` | [newton_seq_is_cauchy](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-is-cauchy--ae501e10f3b31250e0ff05a3.md) | 319 | `result-track:ae501e10f3b31250e0ff05a37d213a76fe87e2dd2cc16a56fe2a127d77497853` |
| 39 | `def` | [newton_cau_seq](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-cau-seq--7bb6adac25f680a50ed657eb.md) | 322 | `declaration-track:7bb6adac25f680a50ed657eb102864bd22c8021d2c59a24dbfc90ae125d472f6` |
| 40 | `def` | [soln_gen](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/soln-gen--4ae0574f65e49b4811d4b3f8.md) | 324 | `declaration-track:4ae0574f65e49b4811d4b3f8a76b086c756b4652a0d3ef97b914e47f9f2d266f` |
| 41 | `theorem` | [soln_spec](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/soln-spec--1b872dd605b378c58cae98c7.md) | 328 | `result-track:1b872dd605b378c58cae98c73891eae30d5d3c7a25aae4f5f5531f773d42f4d3` |
| 42 | `theorem` | [soln_deriv_norm](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/soln-deriv-norm--362ecd6a146034685639c23f.md) | 332 | `result-track:362ecd6a146034685639c23f5ebcb96635feab927c44392af69e8f45ef0cf28d` |
| 43 | `theorem` | [newton_seq_norm_tendsto_zero](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-norm-tendsto-zero--25a2a5c8d565c1ce19238355.md) | 335 | `result-track:25a2a5c8d565c1ce1923835594b7439cb9eff3544ae98f7a062254a26858251d` |
| 44 | `theorem` | [newton_seq_dist_tendsto'](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-dist-tendsto--700eb51355b2e836e34f1f9a.md) | 339 | `result-track:700eb51355b2e836e34f1f9ac0c0853cec6ef8a20219b2371b638468319bea26` |
| 45 | `theorem` | [eval_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/eval-soln--ab88f40d1c7550c8ed7b61e1.md) | 343 | `result-track:ab88f40d1c7550c8ed7b61e18ddc9151cb2a3151ec219b47f20c4f02b7a73963` |
| 46 | `theorem` | [T_pos](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/t-pos--d328abad99630aaf201099cd.md) | 349 | `result-track:d328abad99630aaf201099cd74b74f3c63563d1bd32e826cc69359ac52306110` |
| 47 | `theorem` | [newton_seq_succ_dist_weak](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-succ-dist-weak--2ba09c396e99ce82860e9359.md) | 353 | `result-track:2ba09c396e99ce82860e9359aea10dcedc28dd0e47c198383a9e742f38f180a5` |
| 48 | `theorem` | [newton_seq_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-dist-to-a--26dee67ea25b3e946ad4ddfb.md) | 373 | `result-track:26dee67ea25b3e946ad4ddfb01f234ce943bf13f6aa5c6e194ff1cb45ee7e298` |
| 49 | `theorem` | [newton_seq_dist_tendsto](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/newton-seq-dist-tendsto--765d8ffbde59b61a31aba3bd.md) | 391 | `result-track:765d8ffbde59b61a31aba3bdd0f52ad720286d6c3bddf3c029197ccc396fd1fa` |
| 50 | `theorem` | [soln_dist_to_a](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/soln-dist-to-a--de55a0e48a360152ae754b0a.md) | 397 | `result-track:de55a0e48a360152ae754b0a2baa43370e80296efe0499635fc5e5c5ea00aeb1` |
| 51 | `theorem` | [soln_dist_to_a_lt_deriv](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/soln-dist-to-a-lt-deriv--c1a879c5c4dd43f6196e8a8a.md) | 400 | `result-track:c1a879c5c4dd43f6196e8a8a9fd022b98bd02efd115c0723c3b8ecfd654a78e1` |
| 52 | `theorem` | [soln_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/soln-unique--5e0f5df59a86c38a527a614e.md) | 403 | `result-track:5e0f5df59a86c38a527a614e7ef06829d0eae7e41e54af7f1749e95702eec6d9` |
| 53 | `theorem` | [a_soln_is_unique](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/a-soln-is-unique--c65c549ad64227ad3ef34455.md) | 441 | `result-track:c65c549ad64227ad3ef344554e7745395854488204bec80b6dc10ae517098de7` |
| 54 | `theorem` | [a_is_soln](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/a-is-soln--b177dca29ff753c431a0667d.md) | 468 | `result-track:b177dca29ff753c431a0667d3df8955f43d1424925e3ff0a3f7bd04de6fb0ab1` |
| 55 | `theorem` | [hensels_lemma](../../../../../mathematics/Topology/MetricTopology/Hensel/Variantd2a78bac3799ddede996cdb219978338b316bca721304664aac9933ea3320fee.lean/declarations/hensels-lemma--05fbfa2a33816d7f1ce50f51.md) | 475 | `result-track:05fbfa2a33816d7f1ce50f511c0eedf68a7b08832b257e1a9c5532219b5f43e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
