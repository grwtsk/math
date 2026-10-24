# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed496afea7b26b158050b3951e1d444c07ffa874",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed496afea7b26b158050b3951e1d444c07ffa874`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Star` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/instance--3b42d863ff8edf1d142a1ad6.md) | 48 | `declaration-track:3b42d863ff8edf1d142a1ad6d74360b408d7a724316f2e6fb3583dd4b725595a` |
| 2 | `theorem` | [coe_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/coe-star--c29ca2d31cd3f2aefd80b470.md) | 51 | `result-track:c29ca2d31cd3f2aefd80b470c2b3cc5f1e7df4b293e09bed2a6f3c89d9206fa1` |
| 3 | `theorem` | [star_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/star-apply--130d9c3d139ca510c5e5d7cf.md) | 55 | `result-track:130d9c3d139ca510c5e5d7cff96d86ade42049d691be03c6ba38a29622c021dd` |
| 4 | `instance` | [instTrivialStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/insttrivialstar--5d5bbbd8219351511f310792.md) | 58 | `declaration-track:5d5bbbd8219351511f310792c254c359e680b9c8924c997a4949dd385b130cd0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/instance--47f0b2e8a65d62ba21bc62ab.md) | 63 | `declaration-track:47f0b2e8a65d62ba21bc62abe51bda7c0526d8188b427e3e198dc6d266df6f8b` |
| 6 | `instance` | [starAddMonoid](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/staraddmonoid--ca2e5e320292783ab77711dd.md) | 66 | `declaration-track:ca2e5e320292783ab77711ddc457c29505ca40350a5e49b3821f20d99f75ccf6` |
| 7 | `instance` | [starMul](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/starmul--bde7b3e5ada237db5c5c1980.md) | 70 | `declaration-track:bde7b3e5ada237db5c5c19801048489105a26a4c8d75aa2d12b504576e88c18b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/instance--b31cb26e3a71400a688d9890.md) | 74 | `declaration-track:b31cb26e3a71400a688d9890009be13ba05bad720a0986ac7c6f3cb928330c57` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/instance--fd6d21fdc7e9b70fa90d00b6.md) | 78 | `declaration-track:fd6d21fdc7e9b70fa90d00b6786ae96d3d7e2a5a8be0273a8865443bc950dfdf` |
| 10 | `def` | [compStarAlgHom'](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralghom--99db2b90d465516ea68cb27b.md) | 97 | `declaration-track:99db2b90d465516ea68cb27b9634f36a52876d3cd50075cf430f5f1cdd981cb1` |
| 11 | `theorem` | [compStarAlgHom'_id](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralghom-id--b2c227f853446681dc282eb1.md) | 108 | `result-track:b2c227f853446681dc282eb1b50af5754e1f07233e58bd1f2f8c24cffed357d5` |
| 12 | `theorem` | [compStarAlgHom'_comp](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralghom-comp--ffe454868b5bb5cc6f368c3c.md) | 112 | `result-track:ffe454868b5bb5cc6f368c3c7064788ed44278c11ba4e474ebe2095d67d38bd1` |
| 13 | `def` | [compStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralghom--2e0568f86fa91a03c8c51cf4.md) | 131 | `declaration-track:2e0568f86fa91a03c8c51cf40bf7d76fa3d6970fb02b4d9357f5fa1f9afb2a7e` |
| 14 | `lemma` | [compStarAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralghom-id--49a670e7bf342d95b81aada0.md) | 143 | `result-track:49a670e7bf342d95b81aada0751fa53f934c385b1c9a333eb9fe2bb3e79a65f8` |
| 15 | `lemma` | [compStarAlgHom_comp](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralghom-comp--d454d05828ad27dd9a544a8a.md) | 146 | `result-track:d454d05828ad27dd9a544a8a0b6360b1b2626db2a0070d2984ce9bbb33b188e4` |
| 16 | `def` | [compStarAlgEquiv'](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/compstaralgequiv--8735ad5183943424f334e4f5.md) | 165 | `declaration-track:8735ad5183943424f334e4f5f0701b03eee71659148d7bbcd110f91026849038` |
| 17 | `def` | [ContinuousMap.evalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/declarations/continuousmap-evalstaralghom--58bd39c753da30309e0cac7a.md) | 186 | `declaration-track:58bd39c753da30309e0cac7ab38a7bfa6fc3567143c072d124c9e88c5e6b9df9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
