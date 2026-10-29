-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.D4GraphNumbering.Variant7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.D4GraphNumbering.Variant7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/continuation/independent-replay/ReplayScope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Certificates
import Geometry

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.D4GraphNumbering.Variant7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905

namespace FormalResearch.MutationGame.IndependentReplay
open Matrix
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

theorem d4_graph_numbering : d4.adjacency = !![0,1,0,0; 1,0,1,1; 0,1,0,0; 0,1,0,0] := by decide +kernel

theorem e8_graph_numbering : e8.adjacency = !![0,1,0,0,0,0,0,0; 1,0,1,0,0,0,0,0; 0,1,0,1,0,0,0,1; 0,0,1,0,1,0,0,0; 0,0,0,1,0,1,0,0; 0,0,0,0,1,0,1,0; 0,0,0,0,0,1,0,0; 0,0,1,0,0,0,0,0] := by decide +kernel

theorem d4_geometry_link : d4.adjacency = Geometry.d4A ∧ d4Cartan = Geometry.d4C := by decide +kernel

theorem e8_geometry_link : e8.adjacency = Geometry.e8A ∧ e8Cartan = Geometry.e8C := by decide +kernel

theorem d4_seed_orbit_exact (x : Population 4) : Reachable d4.adjacency x ↔ ∃ s, d4.states s = x := d4_orbit_exact x

theorem e8_seed_orbit_exact (x : Population 8) : Reachable e8.adjacency x ↔ ∃ s, e8.states s = x := e8_orbit_exact x

theorem generated_root_counts : (Finset.univ.image d4.states).card = 24 ∧ (Finset.univ.image e8.states).card = 240 := ⟨d4_orbit_cardinality, e8_orbit_cardinality⟩

theorem generated_sign_counts : (Finset.univ.filter (fun s : Fin 24 => ∀ i, 0 ≤ d4.states s i)).card = 12 ∧ (Finset.univ.filter (fun s : Fin 24 => ∀ i, d4.states s i ≤ 0)).card = 12 ∧ (Finset.univ.filter (fun s : Fin 240 => ∀ i, 0 ≤ e8.states s i)).card = 120 ∧ (Finset.univ.filter (fun s : Fin 240 => ∀ i, e8.states s i ≤ 0)).card = 120 := ⟨d4_positive_count,d4_negative_count,e8_positive_count,e8_negative_count⟩
end FormalResearch.MutationGame.IndependentReplay
