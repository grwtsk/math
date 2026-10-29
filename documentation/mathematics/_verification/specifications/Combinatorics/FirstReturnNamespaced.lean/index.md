# Verification target: First Return Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17db2565bdef52ae10964e870a60c8aedb5c7473",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FirstReturnNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/FirstReturnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17db2565bdef52ae10964e870a60c8aedb5c7473`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReturnAt](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/returnat.md) | 39 | `declaration-track:ce1c44f9572dffc1c7587d9af4dcdd8cebece753287b200ae35a0569a4044335` |
| 2 | `abbrev` | [ValidState](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/validstate.md) | 47 | `declaration-track:e16a1ba125b796d421b9a1ced977dfdabf99222e4f06e5914646a9e0e34476fc` |
| 3 | `theorem` | [exists_return](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/exists-return.md) | 51 | `result-track:e0c32c9f87c48ee539989316270ffc3fcbcc18d120adc59668cf03f64d813576` |
| 4 | `def` | [firstReturnTime](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime.md) | 70 | `declaration-track:e1f1c4a484a19440b72288f201fb07fa62b5d7639a4ad0cdde9e532285120b8c` |
| 5 | `theorem` | [firstReturnTime_pos](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-pos.md) | 78 | `result-track:4574d9dca39efa058a54015458d8433f997cd22c3bf19b1dd2cde9d1f1a221e1` |
| 6 | `theorem` | [firstReturnTime_returns](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-returns.md) | 87 | `result-track:4fbddfda9e2a3b5343b01cddaa042c311f9fc025e6d4d841cdaa9ca0ebda389a` |
| 7 | `theorem` | [firstReturnTime_minimal](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-minimal.md) | 96 | `result-track:3611684d734d035f4dd665fd68084fd4d10650000bdd8a748919a7686a9d2aee` |
| 8 | `theorem` | [firstReturnTime_le_of_return](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-le-of-return.md) | 109 | `result-track:79299e34b9ee749317e8a37e477caf930e2160de29331adab78d1425e9508383` |
| 9 | `theorem` | [firstReturnTime_le_minimalPeriod](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-le-minimalperiod.md) | 120 | `result-track:03b2795981710573558fbc6234f707373719059ef810b3f3fdeee464728e97ed` |
| 10 | `theorem` | [firstReturnTime_le_card](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-le-card.md) | 137 | `result-track:3fcf60cfdd6df10b7219bda6d033fccff29c2b33a448be8f0a3c4d50b7f0e38c` |
| 11 | `def` | [firstReturn](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturn.md) | 146 | `declaration-track:4f7b368e9a8b509b5950d2b48549070aac9fc1a198fbaa4129f7cc90283d07db` |
| 12 | `theorem` | [firstReturn_val](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturn-val.md) | 155 | `result-track:cb869d15b848096e402a69ee10b65b5981f97b1a25ddbd6738a16f496126e0e9` |
| 13 | `def` | [previousReturn](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/previousreturn.md) | 164 | `declaration-track:685ccdaaf46401c3b1343a8bf40b7080258b1fd00d5a8672ad735e27d27d8a78` |
| 14 | `theorem` | [symm_pow_apply_pow_apply_of_le](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/symm-pow-apply-pow-apply-of-le.md) | 170 | `result-track:463d0bfa80936afb8c0d54acd5c4d3a3ba63daa0733e35c9e978a03a1141fd57` |
| 15 | `theorem` | [symm_pow_apply_pow_apply](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/symm-pow-apply-pow-apply.md) | 182 | `result-track:c46754b81d4ae2dc6996fb0d5c984cc2ce52b3ff294be0594a59863d594579e4` |
| 16 | `theorem` | [previousReturn_firstReturn](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/previousreturn-firstreturn.md) | 192 | `result-track:61b7a4a65a8a0fffd17e1616e32efb8dd7a47bd32dec5947fcc529dfd593406e` |
| 17 | `theorem` | [firstReturn_previousReturn](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturn-previousreturn.md) | 223 | `result-track:27ab0043b4217b47a032931c147fed4aecfa0d2a72535ccc4f3bb980e272ea02` |
| 18 | `def` | [firstReturnPerm](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnperm.md) | 232 | `declaration-track:5ade29d5a36f283a87c7712b8a8a2d5ac802485b45925e38e7a88c2f9324b783` |
| 19 | `theorem` | [firstReturnPerm_apply_val](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnperm-apply-val.md) | 242 | `result-track:c01a5ffa0adcadc8f095f4dc05f6eded0971b74dbcb48c5994e9ae792e856f88` |
| 20 | `theorem` | [firstReturnPerm_bijective](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnperm-bijective.md) | 251 | `result-track:6a25877d410926875b311f1196fe80e26507a5aeff975f7f220741a2cfdfca84` |
| 21 | `theorem` | [firstReturnPerm_symm](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnperm-symm.md) | 258 | `result-track:4c5300cd4717aea3b9b5a4780313674337145970352aed51490a4fd4a8a262aa` |
| 22 | `def` | [invariantRestriction](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/invariantrestriction.md) | 268 | `declaration-track:01bb2eefdedaa6962f0370424a899a11994be96a8d39533ae1398985f972e2a2` |
| 23 | `theorem` | [firstReturnTime_eq_one_of_invariant](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-eq-one-of-invariant.md) | 281 | `result-track:89de957c18edfc947109d6848f150883ab26a4026d34d230edc6d9c9812529e1` |
| 24 | `theorem` | [firstReturnPerm_eq_restriction](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnperm-eq-restriction.md) | 295 | `result-track:fbfbd4bc947728730273d73d56257526020f065bb3d14ac7a831911ee325a2ab` |
| 25 | `instance` | [returnAtDecidable](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/returnatdecidable.md) | 308 | `declaration-track:50dc4f580fd7996031fd856db7e186e06b315a6b8d6863df07eeb20997e91805` |
| 26 | `def` | [returnTimesWithin](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/returntimeswithin.md) | 318 | `declaration-track:490af0a3208fe7da74bc4e27646576d9ca6b32ecacc2e284257e95b347c8c5e2` |
| 27 | `def` | [firstReturnSearch](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnsearch.md) | 327 | `declaration-track:0b3c87f22a526ee92b3f427e3aa0666ec3a69ed103eac65b8876ff773bd213e4` |
| 28 | `theorem` | [firstReturnTime_mem_returnTimesWithin](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturntime-mem-returntimeswithin.md) | 337 | `result-track:d37f5c9868086cb7add00ed8eda4f302d40a2d27389d5ee0f10736f36d08b828` |
| 29 | `theorem` | [returnTimesWithin_nonempty](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/returntimeswithin-nonempty.md) | 348 | `result-track:7ea04fcf4487fb8c7ac5af105c7ef930f1d2ea58b21a4dc056018880c68a1c93` |
| 30 | `theorem` | [min_returnTimesWithin_eq](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/min-returntimeswithin-eq.md) | 357 | `result-track:39d3b1d017ace8b6c6d2f41cbb844e57c232195cc9c4ca9d16eeffb355366665` |
| 31 | `theorem` | [firstReturnSearch_ne_none](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnsearch-ne-none.md) | 371 | `result-track:6fe992755e5c72e729c9bfe1aacbeced826346eb6e4846f662a15eccf4e1f274` |
| 32 | `theorem` | [firstReturnSearch_eq_firstReturnTime](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnsearch-eq-firstreturntime.md) | 380 | `result-track:d2fbfb0e15cce116eeb10dfde915e1397fc56c3828f787d0e0c4bc38fa9940c7` |
| 33 | `def` | [firstReturnExec](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnexec.md) | 392 | `declaration-track:4a609a64b320e9b69ba76cdaed63377960fe9e60e988a99158d581b01708fdd2` |
| 34 | `theorem` | [firstReturnExec_refines](../../../../Combinatorics/FirstReturnNamespaced.lean/declarations/firstreturnexec-refines.md) | 405 | `result-track:91e8f89f5b224a4006655aca0ad6d505e422076e44255ecda99eec791e0cfd11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=053cc9cd9f3b2721ee6f9a8ae5a0377df015a5c82fd3b15efa64314a35b2874c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
