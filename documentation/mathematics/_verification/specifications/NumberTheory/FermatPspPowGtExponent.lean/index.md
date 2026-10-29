# Verification target: Fermat Psp Pow Gt Exponent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99edc02fe962d6536bd91c79d9ec286dae85a7b5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FermatPspPowGtExponent.lean/index.md) · [Full source](../../../../NumberTheory/FermatPspPowGtExponent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99edc02fe962d6536bd91c79d9ec286dae85a7b5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbablePrime](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/probableprime.md) | 51 | `declaration-track:1fa6917fe164b2e248127bbc0a4159fb2d23c5ca37b5709ddaacc92e9cf04668` |
| 2 | `def` | [FermatPsp](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/fermatpsp.md) | 60 | `declaration-track:326d7d9ada7f9e480ce3d2fab7b627d43c0b61603b9b1edb43911bdbcfeedabe` |
| 3 | `instance` | [decidableProbablePrime](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/decidableprobableprime.md) | 64 | `declaration-track:95dc8c895c98cdabe1fb3f7f9afaa6d7d77a43f46b3a3b74a51e952ac088c4ab` |
| 4 | `instance` | [decidablePsp](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/decidablepsp.md) | 68 | `declaration-track:442c413b29255a06e38d3bed612ce42c5e578ee863d9b089d3ec8579dbb5b277` |
| 5 | `theorem` | [coprime_of_probablePrime](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/coprime-of-probableprime.md) | 75 | `result-track:13d032f639c96dfb4f7ab276fd803da7262a3ceb63b4d424295621c510bde4a2` |
| 6 | `theorem` | [probablePrime_iff_modEq](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/probableprime-iff-modeq.md) | 102 | `result-track:cfc5340939b93d0d788ec504b3a95f75c05d9c389e28bd345c21c6e28edd0ac9` |
| 7 | `theorem` | [coprime_of_fermatPsp](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/coprime-of-fermatpsp.md) | 120 | `result-track:937b58f8283a2d16e393b68011a5c7c212f7e598fd37fa0a63cbcae413033bd7` |
| 8 | `theorem` | [fermatPsp_base_one](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/fermatpsp-base-one.md) | 127 | `result-track:d666cca215971505d2c620b43a50da72789618f9bb812501027b9a277a6cc6ac` |
| 9 | `theorem` | [pow_gt_exponent](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/pow-gt-exponent.md) | 136 | `result-track:1f77b1c43497ada2680071e90c08ca324d6fdd478db09de98302603c35fb511e` |
| 10 | `theorem` | [a_id_helper](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/a-id-helper.md) | 139 | `result-track:4ee5ae93ca1efb59c9eccda48a5553b0fe747476533ea5c69b8fef5e0ab41642` |
| 11 | `theorem` | [b_id_helper](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/b-id-helper.md) | 146 | `result-track:6fb8c21cfbedbb06c5f9819258433a86b17146c302740517dfce1d3710490256` |
| 12 | `theorem` | [AB_id_helper](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/ab-id-helper.md) | 154 | `result-track:924f4ab9732c2ee77d7662af60d5c90c17093de330b929de11987f04430e953b` |
| 13 | `theorem` | [bp_helper](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/bp-helper.md) | 164 | `result-track:fb5072722529101763a7c06ff8271c0b9f8b6ee4477cb4e35a2da91365c791dd` |
| 14 | `def` | [psp_from_prime](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/psp-from-prime.md) | 193 | `declaration-track:f6625164c8b9149dbbc26327db27049a0cf5c1a0d6d9432db44fce726aec4821` |
| 15 | `theorem` | [psp_from_prime_psp](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/psp-from-prime-psp.md) | 202 | `result-track:65cc0746d5da4e492288d11814d3f1812f061285e6a88be2b952945392d6a418` |
| 16 | `theorem` | [psp_from_prime_gt_p](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/psp-from-prime-gt-p.md) | 304 | `result-track:04bd58105b51d4a1899460de0557519d2d5d339ed5b84660c745f723169b19d7` |
| 17 | `theorem` | [exists_infinite_pseudoprimes](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/exists-infinite-pseudoprimes.md) | 341 | `result-track:7a8d98616be851b80e9963c5465b919f3b195d2b2be2a4cb9e2ed7526c7e5af4` |
| 18 | `theorem` | [frequently_atTop_fermatPsp](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/frequently-attop-fermatpsp.md) | 377 | `result-track:ff231a391d626253a08dcaf71c41ba9e7af09919a7ec94ee748ade61787abb6c` |
| 19 | `theorem` | [infinite_setOf_pseudoprimes](../../../../NumberTheory/FermatPspPowGtExponent.lean/declarations/infinite-setof-pseudoprimes.md) | 386 | `result-track:78e830796116d136f20264c757d999ad6bbacf953382e801dc6b60fba571aaa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f24d93f9cc5c47f693998b35383bad266921a66cdc773344c3b6294c1d0c6081 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1f6535537be68559708884503f5b5e68ce807294551c4cdcbae3accb9fce725.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
