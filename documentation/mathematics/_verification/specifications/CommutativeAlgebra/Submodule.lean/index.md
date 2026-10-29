# Verification target: Submodule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9de2ccae0e2855f9682752ac37f4546edbd61acc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Submodule.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Submodule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9de2ccae0e2855f9682752ac37f4546edbd61acc`.

Source path: `GRWTSK/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.FractionRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeSubmodule](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule.md) | 32 | `declaration-track:79e6eaefadc61f5b39a2726cebf68994600f362f05d6ec4c558a15e97c48fa99` |
| 2 | `theorem` | [mem_coeSubmodule](../../../../CommutativeAlgebra/Submodule.lean/declarations/mem-coesubmodule.md) | 35 | `result-track:6f56e55abf3bc5fe966c3a4d9792df02951bd50819b6caabafbcd93abbc8f363` |
| 3 | `theorem` | [coeSubmodule_mono](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-mono.md) | 39 | `result-track:c5ea37b6748f747cf4b296c2f62613d3f7acd2cc2ee4009aae426d0ea49abf05` |
| 4 | `theorem` | [coeSubmodule_bot](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-bot.md) | 43 | `result-track:c51be242520198cf09cd4d4f099d5f291ebeb675b582373a169b356959cd366c` |
| 5 | `theorem` | [coeSubmodule_top](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-top.md) | 47 | `result-track:a930111d7806a0ae83e116641af3bff9e00e5da865732ba50b4a40afe2a90b80` |
| 6 | `theorem` | [coeSubmodule_sup](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-sup.md) | 51 | `result-track:505e9a1139cb8c08fad8d7d65057021da724e65cecda5358e7ebb6535be89e5b` |
| 7 | `theorem` | [coeSubmodule_mul](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-mul.md) | 56 | `result-track:e11264cf0c2b391a46bbd1bf18213a30595d3eda2b592c38ccab71f6edd31731` |
| 8 | `theorem` | [coeSubmodule_fg](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-fg.md) | 60 | `result-track:03ff224a464a71a141f1c4f5575268f9aaa740f2680b6d6004ee48baff2063f8` |
| 9 | `theorem` | [coeSubmodule_span](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-span.md) | 65 | `result-track:42adbc422667fc8cdc919d5d73df67bc2b2906ac9d3e43ab307af6b0bae20c1b` |
| 10 | `theorem` | [coeSubmodule_span_singleton](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-span-singleton.md) | 70 | `result-track:dbfbfd2d39a7891763f5c49295a7edbfa29009eb049f00694a4e4b26b6da90ab` |
| 11 | `theorem` | [isNoetherianRing](../../../../CommutativeAlgebra/Submodule.lean/declarations/isnoetherianring.md) | 77 | `result-track:ec525d290d99e13be02968f114fb6f899867c95cf440f13cf0e366950a4e03ab` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Submodule.lean/declarations/instance.md) | 81 | `declaration-track:34bb7b0877f336665c48704f5a732ef93dcef4a5994cb899a9a7d0d8fb04f9e3` |
| 13 | `theorem` | [coeSubmodule_le_coeSubmodule](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-le-coesubmodule-source-edition-2.md) | 91 | `result-track:f5b0142afc51fbb7fcc45bd6f737c47db47ee7ef0a1da10d7ad1aee62b9e27ce` |
| 14 | `theorem` | [coeSubmodule_strictMono](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-strictmono.md) | 98 | `result-track:80ed3a7a949b5f8d6cb42aad73aef6bc064790342f896c665a0186fd3bdffee7` |
| 15 | `theorem` | [coeSubmodule_injective](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-injective-source-edition-2.md) | 104 | `result-track:e372d2453f71d200d78550e5d6dab907cf9e0c632b85abe30482bf4b5a004dc7` |
| 16 | `theorem` | [coeSubmodule_isPrincipal](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-isprincipal.md) | 108 | `result-track:2d09858e6869238a18fea84e28d9c6e1d98dcd2d77b2c18666ba79d80de09b6a` |
| 17 | `theorem` | [mem_span_iff](../../../../CommutativeAlgebra/Submodule.lean/declarations/mem-span-iff.md) | 122 | `result-track:65e0d4673746ac722e509eb41c6b1d295b0bec1ee85d0e2455cd44e4be850f2b` |
| 18 | `theorem` | [mem_span_map](../../../../CommutativeAlgebra/Submodule.lean/declarations/mem-span-map.md) | 148 | `result-track:5e86c7325866fca935a52f48efc09fca496a2e67fa2fed626d7b272dedfd4545` |
| 19 | `theorem` | [coeSubmodule_le_coeSubmodule](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-le-coesubmodule.md) | 173 | `result-track:9326e461c8c6972602846c1302405219b9a26d27b0de46f18642517f10de9950` |
| 20 | `theorem` | [coeSubmodule_strictMono](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-strictmono-source-edition-2.md) | 178 | `result-track:912e3ec65b5f27f26c9103a4476d1fcdfe69a67084675b00a54161d01f3e8c88` |
| 21 | `theorem` | [coeSubmodule_injective](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-injective.md) | 183 | `result-track:a6f447c1a6b88120db0942d0ac9aae1f347c280ff5df07ff2bfc5a958a85a8f8` |
| 22 | `theorem` | [coeSubmodule_isPrincipal](../../../../CommutativeAlgebra/Submodule.lean/declarations/coesubmodule-isprincipal-source-edition-2.md) | 187 | `result-track:fb0cdfe36722a6315cde7bdce82a7192fe8d81d8bbca637f9709301111d75581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03585223c95d07ccc967a1652a7162d9c739a2bab3aeb3320b0d4b11a0e3f68f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean","GRWTSK/_verification/specifications/Algebra/Submodule/Variant89d332e15c8231758a62f201b25d38030d925f7292e7b86ded3906ac55721670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
