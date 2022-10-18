<template>
    <div class="flex flex-col justify-center mt-[10.75rem] text-center">
        <p class="text-[2.5rem] text-second font-semibold"> SKIN DISEASE DETECTION </p>
        <p class="text-[0.875rem] font-medium text-sixth">Upload a picture of your dog’s skin.</p>
        <form class="align-self-center" @submit.prevent="uploadImage">
            <div class="flex flex-col justify-center">
                <label for="upload">
                    <div
                        class="flex w-[30.5rem] h-[3rem] bg-first align-items-center justify-center mt-[1.75rem] mb-[2.5rem] rounded-2xl">
                        <p v-if="fileName == null" class="text-white cursor-pointer">
                            No File Selected
                        </p>
                        <p v-else class="text-white">
                            {{ fileName }}
                        </p>
                    </div>
                </label>
                <div
                    class="flex w-[24.5rem] h-[24.5rem] bg-seventh rounded-[1.5rem] align-items-center align-self-center justify-center">
                    <label v-if="url" for="upload">
                        <img :src="url"  class="object-cover w-[24.5rem] h-[24.5rem] rounded-[1.5rem]" />                    
                    </label>
                    <label v-else for="upload" class="text-[1.5rem] font-medium text-grey cursor-pointer">
                        Drop Image Here<br />
                        - or - <br />
                        Click to Upload
                    </label>
                </div>
                <input type="file" accept=".jpeg,.jpg,.png,.svg" class="hidden" id="upload" @input="getFileName()" />
                <button class="mt-[2.25rem] w-[7.25rem] py-[1rem] rounded-[2.75rem] bg-first text-white align-self-center">Submit</button>
            </div>
        </form>
    </div>
</template>
<script>
export default {
    data() {
        return {
            fileName: null,
            url: null,
        }
    },
    methods: {
        getFileName(){
            const file = upload.files[0];
            this.url = URL.createObjectURL(file);
            this.fileName = upload.files.item(0).name
        },
        uploadImage(){
            this.$router.push({name: "UploadResult"})
        }
    }
}
</script>