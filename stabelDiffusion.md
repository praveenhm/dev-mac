
Generate images with MJ, do passes with photoshop, and upscale with Gigapixel.”

https://github.com/sd-webui/stable-diffusion-webui
https://github.com/lstein/stable-diffusion/blob/main/README-Mac-MPS.md

PATH_TO_CKPT="/Volumes/MacX_1TB/devX/data/stablediffusion" 
ln -s "$PATH_TO_CKPT/sd-v1-4.ckpt" models/ldm/stable-diffusion-v1/model.ckpt
conda activate ldm
python scripts/preload_models.py
python scripts/dream.py --full_precision  
python scripts/dream.py --web

Error:
ModuleNotFoundError: No module named 'ldm'
sol: pip install -e .

https://moritz.pm/posts/parameters

python scripts/txt2img.py --prompt "a anime still of an highly detailed night cyberpunk city life, bladerunner style!! detailed shops, neon lights, ray tracing, advertising everywhere, people and robots walking around. art by satoshi kon and studio ghibli, in the  style of ghost in the shell, muted colours, hyperrealism, cinematic lighting, lush detail, award winning, wlop, octane render, trending on artstation" --plms


device = 'cuda' if torch.cuda.is_available() else 'mps' if torch.backends.mps.is_available() else 'cpu'.





midjourney:

beautiful polynesian woman emerging from a tropical pool, very realistic, flowers, hyperrealistic, flowers, tropical, fiji --testp --upbeta --v 3 --upbeta

Also ran it through a GFP-GAN app to clear up the eyes, etc.


Calming beautiful + geek gothic woman Nordic + cyberpunk tactical soldier combat engineer, olive skin, silver blue titanium camo patterns, finely detailed modern army armor, finely detailed face, finely detailed hair, finely detailed body, finely detailed eye, camo scarf, long wavy hair, character design, photography, octane render, dramatic lightings, epic lighting, cinematic lighting, volumetric lighting, unreal engine, intricate details, extremely detailed, very high details, photorealistic, hi res, hdr, uhd, fiery, hyper detailed, ultra realistic, vibrant, centered, in frame, real, --no gun, --s 2800 --ar 16:9 --testp --creative --upbeta --upbeta


stable diffusion:

An oil painting of the interior of a house in the alps with a beautiful view of a mountainrange in the distance, detailed, dim lighting, cosy, beautiful lighting, sun rays, forest, trending in artstation, award winning, by Albert Bierstadt


"volumetric lighting", "dramatic lighting", "cinematic lighting", "intricate", "elegant", "artstation", "4k", "8k", "highly detailed", "epic", "pixiv", "artgerm", "ornate", "unreal engine", "sharp focus", "soft focus", "vibrant colors", "muted colors", "bokeh", "studio quality", "trending on artstation", "hyperrealistic"


the city of atlantis, underwater, hyper realistic ocean, beautiful water, volumetric lighting, cinematic lighting, octane render, antique pattern, 8k, greg rutkowski, highly detailed, 3D render, sharp focus

haunted house, trees in the distance, tree leaves on the ground, mischievous and gorgeous, vibrantcolors, awardwinning, intricate, insanelydetailed, digitalpainting, conceptart, horrorvibes


blonde blue-eyed straight-haired beautiful young woman

persian woman wearing white headscarf with gold headband and clean-shaven man wearing white turban with red vest, stone wall, trees, photograph

doom marine with six-pack shooting machine gun on mars, crytek

evil bald grinning clean-shaven man with bushy eyebrows wearing a red cloak clasping hands, warehouse, hyperrealistic

dark-haired beautiful young woman in jacuzzi, large breasts, cement, bushes, evening, photograph

blue-skinned red-eyed man in white military uniform, dark, indoors, photograph

cyberpunk, godrays, noire, dark mood.


