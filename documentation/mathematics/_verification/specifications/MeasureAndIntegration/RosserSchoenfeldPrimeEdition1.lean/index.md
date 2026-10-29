# Verification target: Rosser Schoenfeld Prime Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e73e970e4c41cfd99a78e1ae11ba7171d276a84`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Stieltjes` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pntBigO](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/pntbigo.md) | 22 | `result-track:3e527287199acf6fe573e8b350f48a7638d04ccd19d0f37af0d313f2a9f04bcf` |
| 2 | `theorem` | [pnt](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/pnt.md) | 85 | `result-track:224d851804417edc3ec12338dea1f3f3cf5473b54dedd66b33a1cf2778f8bbe7` |
| 3 | `def` | [θ.Stieltjes](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/stieltjes.md) | 118 | `declaration-track:b52b9674145eb40193e965f71cad6ba8ab4db82b7140183662ee1c8ef2cbca8c` |
| 4 | `lemma` | [theta_succ_sub](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/theta-succ-sub.md) | 131 | `result-track:f5943780d98cbbaf60fe8d84efd31636cc466c3854f4be1c490e2a7d999eda70` |
| 5 | `lemma` | [theta_one](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/theta-one.md) | 134 | `result-track:0646b35e95b180e36291c333e40702add3738f66e1e767f035ce3e7aa29e4f60` |
| 6 | `lemma` | [theta_two](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/theta-two.md) | 137 | `result-track:3e1488999cdf12135268278a9bc10f882c92ba38ca957340a0d8cf6c64e68656` |
| 7 | `lemma` | [leftLim_theta_succ](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/leftlim-theta-succ.md) | 140 | `result-track:de60b205568a79db702d843ab6efd96a17d26a53d789cd30c0f412c34bc00b0f` |
| 8 | `theorem` | [summable_pre413](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/summable-pre413.md) | 160 | `result-track:bbcbae6a0b85a5896f8c7d82ae15dfe99c97facf5193e061cd7cf0a32639a6f5` |
| 9 | `lemma` | [support_pre413](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/support-pre413.md) | 215 | `result-track:67f61ff54edf8e87e90bcb2904bc1906fb7f29a5e075dbf606376de5ac0e4724` |
| 10 | `lemma` | [pre_413_measure_inter](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/pre-413-measure-inter.md) | 282 | `result-track:a03cea58e250c949e90c178788429d844b6d1fca356e0e6df388253a7ce0fc0e` |
| 11 | `theorem` | [pre_413](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/pre-413.md) | 349 | `result-track:bcc4c752ea44e78355866bf6feb18aa792527a94a711183407494ca74fde0684` |
| 12 | `theorem` | [eq_413](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-413.md) | 500 | `result-track:060ca8f24530c6ae9b831b227de49c907a714384afe976b65576014016b8e4db` |
| 13 | `theorem` | [eq_414](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-414.md) | 530 | `result-track:241e8567e3f2fecc78e46f493e5396d6c25f40c85e9ce4c4cb0e15b71aac4120` |
| 14 | `def` | [L](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/l.md) | 604 | `declaration-track:359c90e68955ca03b4680cc2a1fa88f04a9d4f2fd3b8a2293a00a7ae8570bf8b` |
| 15 | `theorem` | [_root_.intervalIntegral.interval_add_Ioi](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/root-intervalintegral-interval-add-ioi.md) | 608 | `result-track:844546c1a420792f922cdb52864d7609f97dbb281eb5f219a9e1125ff970926c` |
| 16 | `theorem` | [intervalIntegrable_inv_log_pow](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/intervalintegrable-inv-log-pow.md) | 618 | `result-track:a0ef38c7415eee085809711c87dcd61ee04370d470cc3b1d163a327cdfdf33b1` |
| 17 | `theorem` | [ioiIntegrable_inv_log_pow](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/ioiintegrable-inv-log-pow.md) | 627 | `result-track:073b7b85da778d546b2a11ee6887899c1ceae3d81bfc5907701cb50d8d26489f` |
| 18 | `theorem` | [bound_deriv](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/bound-deriv.md) | 654 | `result-track:6e1a5fd68387afa3ec37b6541dd914f69482847fe738feec96a3ed91ebf76083` |
| 19 | `theorem` | [integrableOn_deriv](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/integrableon-deriv.md) | 679 | `result-track:cb1232c28e9ffb038869983e3707ebce7a06d53db2137725b6138d43bee77b4b` |
| 20 | `theorem` | [eq_415](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-415.md) | 713 | `result-track:05867f99dd890b850efac11396435857048b5ec028b7c74d656e8cf9cc77fbdf` |
| 21 | `theorem` | [eq_417](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-417.md) | 731 | `result-track:f8463b0b8f75a667efab0d5163e1f6f6cdb319c5772fb448d4d7928565290d86` |
| 22 | `theorem` | [eq_418](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-418.md) | 744 | `result-track:69124bf41fc8561093ba7187fda1728ea3afccaa7dcc2942b91b6f811f4df761` |
| 23 | `theorem` | [ioiIntegral_tendsto_zero](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/ioiintegral-tendsto-zero.md) | 772 | `result-track:1afd790068504ca32b61788d6fe849f8df182822153aa63cb6f50ac977aec0a9` |
| 24 | `def` | [_root_.meisselMertensConstant](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/root-meisselmertensconstant.md) | 789 | `declaration-track:c4b79fed044e988561bbaeb6993099541cef3a425959b6a0f284d5f2981467af` |
| 25 | `theorem` | [integrableOn_deriv_inv_div_log](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/integrableon-deriv-inv-div-log.md) | 791 | `result-track:d417b7c4d8f07e909e6520f2b5f2c2b93ca0a3f94dbb4442da6a1ddd72266192` |
| 26 | `theorem` | [meisselMertensConstant_identity](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/meisselmertensconstant-identity.md) | 799 | `result-track:e3ffc861124dcc2640f3e566b74617affdd2478d4f0c3c27dafa1dda2dfd5968` |
| 27 | `theorem` | [mertens_second_theorem](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/mertens-second-theorem-source-edition-2.md) | 817 | `result-track:cf98efafe96a13bcf22fd16cb48474e75b4684c6cd7014a271d096d9de0ba080` |
| 28 | `theorem` | [eq_419](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-419.md) | 849 | `result-track:5a8fcb8c3e068b30c20afba28ddafbe8195fcb2a92d53abccc8304d3f3b02076` |
| 29 | `theorem` | [mertens_second_theorem'](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/mertens-second-theorem.md) | 866 | `result-track:5c977e0f6947b13a3db1b8f52949313e21f78427b81a263e800be92cb1b4d55a` |
| 30 | `def` | [_root_.mertensConstant](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/root-mertensconstant.md) | 895 | `declaration-track:668c31faba3a0b99832300a77c4b4d3c2d62f5cf03aad6f05eeefe96512235bf` |
| 31 | `lemma` | [log_div_log_eq](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/log-div-log-eq.md) | 897 | `result-track:af58e8d1c15cfb16fa951eba240978640487e46ef64ebbfdca70bb9805a2a117` |
| 32 | `lemma` | [deriv_eq](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/deriv-eq.md) | 901 | `result-track:a476ade98db09c7c1d45bd84eaccdcd32804d2172b662f6eb668b872676b13ec` |
| 33 | `lemma` | [intervalIntegral_eq](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/intervalintegral-eq.md) | 905 | `result-track:c47bb2710bd8bcc676d06844d92dd7a0f0fa631f8b788c48fca7ba7963c11cf2` |
| 34 | `theorem` | [integrableOn_deriv_inv](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/integrableon-deriv-inv.md) | 910 | `result-track:5ae441d343f210016a8e5ab36e159a6f4106ba7d568e4fce26273b3dc9ec8786` |
| 35 | `theorem` | [eq_420](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/eq-420.md) | 934 | `result-track:5cbb02c4fb7381863c3f5c82ce10b08a60d8463d2159f584c3e2254ce90c29f7` |
| 36 | `theorem` | [mertens_first_theorem](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/mertens-first-theorem-source-edition-2.md) | 958 | `result-track:9cfcfb3c5d91c4987f1255f818481d98e88bad87d83aa462e540e74e67134044` |
| 37 | `theorem` | [mertens_first_theorem'](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/mertens-first-theorem.md) | 980 | `result-track:1a2c34734b0933dfa5131fc01745fb2f2ec2916b883a1a461c2ea285e49a8188` |
| 38 | `theorem` | [theorem_12](../../../../MeasureAndIntegration/RosserSchoenfeldPrimeEdition1.lean/declarations/theorem-12.md) | 1008 | `result-track:635bb71b6b194ac36efb6c6699d62e586b092bde5e268256644acc5fd24167a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e7ca9c9d4698fb8ee92e844a4715301015821d82843314d507e537bb617b43c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
