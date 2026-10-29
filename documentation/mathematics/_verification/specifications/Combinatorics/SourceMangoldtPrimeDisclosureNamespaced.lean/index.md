# Verification target: Source Mangoldt Prime Disclosure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92e4780b426b9fdf2d19d552e58b67fa5cada813",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92e4780b426b9fdf2d19d552e58b67fa5cada813`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disclosedMangoldtRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedmangoldtrow.md) | 30 | `declaration-track:ff351f619a2a58e0c217887c1b7a3296fd5c069af0716c070c12acabcd80bf2c` |
| 2 | `def` | [freshMangoldtRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshmangoldtrow.md) | 34 | `declaration-track:04527f1564a0fb9ba56d34f4f982c72aa0a3b0b198cfe96fe8a5668a8978aff3` |
| 3 | `def` | [freshPowerInventory](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshpowerinventory.md) | 38 | `declaration-track:600a6c7e668da1d83c750cdc8385006c797b7784c0871b3bdc4f48c02db2977a` |
| 4 | `theorem` | [disclosedMangoldtRow_insert](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedmangoldtrow-insert.md) | 41 | `result-track:7606869b2a6898e02c81d79e0ccc714cf663d733955ec17a064861f51a1e9666` |
| 5 | `theorem` | [freshMangoldtRow_eq_exact_power_weight](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshmangoldtrow-eq-exact-power-weight.md) | 51 | `result-track:fe3670512f147ba0562515a030b2df75a558d0ec571893cf1c58cb3bc35c1d09` |
| 6 | `theorem` | [mem_freshPowerInventory_iff](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/mem-freshpowerinventory-iff.md) | 61 | `result-track:93ba1b5d31a79fae5431b179e6fa163e4c26314b8c4a43bc6c1e8eb86fae8199` |
| 7 | `theorem` | [freshMangoldtRow_at_prime_power](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshmangoldtrow-at-prime-power.md) | 79 | `result-track:43cd292038e3717c7a0bd97354e292c03541323ccf2dc830ed98729aa3a54883` |
| 8 | `theorem` | [fresh_profile_eq_complete_power_sum](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/fresh-profile-eq-complete-power-sum.md) | 86 | `result-track:31585170a2343ccf4b2ede40c9178268fbc8c40022bde2bf16798f9bb5cdf2f5` |
| 9 | `theorem` | [disclosedMangoldtRow_eq_actual_on_long](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedmangoldtrow-eq-actual-on-long.md) | 99 | `result-track:0422beff6406dc9ccc74433169c5ca28d93ad01053f14115e9a007b3a23e2d14` |
| 10 | `theorem` | [disclosed_profile_eq_actual_mangoldtAt](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosed-profile-eq-actual-mangoldtat.md) | 111 | `result-track:c59d0cd74f9708139b0105547fe022521459816b23ad9e0ae64ca5d19ca955ac` |
| 11 | `def` | [disclosedBetaRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedbetarow.md) | 122 | `declaration-track:f1ef3bdc0ad33f5cbd031e88e48880d9b9cecf26eb76d6097130f413eeb22ef3` |
| 12 | `def` | [freshBetaRow](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/freshbetarow.md) | 126 | `declaration-track:86681cc9208f5c5d78f9f44884dd06589420ce588cf0a9991019ccfe6304b4bb` |
| 13 | `theorem` | [disclosedBetaRow_insert](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedbetarow-insert.md) | 129 | `result-track:15f7712a5419ec9d436aa1bbcb88c7fdb7334288994b1b89bfb78c1cab98a75e` |
| 14 | `def` | [disclosedReadoutAt](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedreadoutat.md) | 139 | `declaration-track:b7294d137651fd93859434097e2ea75e2e88b629220d8fc22db86e7cf7d21878` |
| 15 | `theorem` | [disclosedReadoutAt_fresh_prime](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedreadoutat-fresh-prime.md) | 144 | `result-track:a0bab04095c41df7705b452cd89db479f085194a03933dd822e3ba9c6d46affa` |
| 16 | `theorem` | [compensatedReadout_congr_on](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/compensatedreadout-congr-on.md) | 158 | `result-track:c70339e0c02b3bc7936984adf88eda229cc205336e48d367dfcf1061483bc917` |
| 17 | `theorem` | [disclosedReadoutAt_eq_actual](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/disclosedreadoutat-eq-actual.md) | 176 | `result-track:e317f19de00b2373f5e0c347f56ca47b88162f28c38a6869d5d72da7519be30c` |
| 18 | `theorem` | [actual_readoutAt_fresh_prime](../../../../Combinatorics/SourceMangoldtPrimeDisclosureNamespaced.lean/declarations/actual-readoutat-fresh-prime.md) | 192 | `result-track:27355bde43512810b47fe40253001ebd36c0ef6a923005c5221b4712534eaed9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83e0f2dab33b277d7d03b382bee49d8c54eb29a981b5e70b5fdc912304a31c4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourceMangoldtPrimeDisclosure/Variantb034ca7dcd9fa30adc2fc5070e7943fc1c6fca97cb2e980c94592c2b817ba7fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
