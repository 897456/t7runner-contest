
-- *** Vision Shader-Permutation Config-File *** 

AddPermutationBool ("MIRROR");
AddPermutationBool ("VMATERIAL_SPECULAR");
AddPermutationBool ("VMATERIAL_PARALLAX");
AddPermutationConst ("LIGHTMAP", true);
AddPermutationConst ("VMATERIAL_CUBE_REFLECTION", false);
AddPermutationConst ("USE_FOG", true);
AddPermutationConst ("VMATERIAL_NORMALMAP", true);
AddPermutationBool ("VMATERIAL_REFMAP");
AddPermutationConst ("USE_RIMLIGHT", false);
AddPermutationConst ("VMATERIAL_GLOWMAP", false);
AddPermutationConst ("VMATERIAL_GLOWMAP_ADDITIVE", true);
AddPermutationBool ("ALPHATEST");
AddPermutationConst ("VMATERIAL_PARALLAX_REFINEMENT", true);
AddPermutationConst ("USE_FOG", true);
AddPermutationConst ("VMATERIAL_SKIN_SHADING_BLENDED_NORMALS", false);
AddPermutationConst ("VMATERIAL_SKIN_SHADING_SSSSS", false);
AddPermutationConst ("VMATERIAL_SKIN_SHADING_PREINTEGRATED", false);

function IsPermutationSupported (PermutationValues)

  if ((PermutationValues["VMATERIAL_NORMALMAP"] == false) and
      (PermutationValues["VMATERIAL_PARALLAX"] == true)) then
        return false;
  end
  
  if ((PermutationValues["VMATERIAL_REFMAP"] == true) and
      (PermutationValues["VMATERIAL_SPECULAR"] == false) and
      (PermutationValues["VMATERIAL_CUBE_REFLECTION"] == false)) then
    return false;
  end

  return true;
end


